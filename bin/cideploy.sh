#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# Prints shell input lines as they are read
set -v

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# setup basic auth on the container
#
basicauth() {
  if [[ -n ${CF_BASIC_AUTH_PASSWORD+x} ]]
  then
    htpasswd -cb site/Staticfile.auth $CF_BASIC_AUTH_USERNAME $CF_BASIC_AUTH_PASSWORD
  else
    echo "Not setting a password."
  fi
}

# Push the app to the new OSCF environment
#
push-oscf() {
  cf api $OSCF_API
  cf auth $OSCF_USER $OSCF_PASSWORD
  cf target -o $OSCF_ORG
  cf target -s $OSCF_SPACE
  cf push $appname
}

# main script function
#
main() {
  readonly GITBRANCH="${CIRCLE_BRANCH}"

  case "${GITBRANCH}" in
    master)
      basicauth

      # For performance we push to oscf in the background, and then
      # continue the normal deploy as normal
      echo "Pushing to oscf in the background"
      push-oscf > ${CIRCLE_ARTIFACTS}/push-oscf-out.log 2>${CIRCLE_ARTIFACTS}/push-oscf-err.log &

      cf api $CF_API
      cf auth $CF_USER $CF_PASSWORD
      cf target -o $CF_ORG
      cf target -s $CF_SPACE
      cf push $appname

      echo "Waiting for the oscf push to finish"
      wait

      ;;
    *)
      exit 0
      ;;
  esac
}

main $@
