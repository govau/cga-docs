#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

echo "Starting $0"

cf api $OSCF_API
cf auth $OSCF_USER $OSCF_PASSWORD
cf target -o $OSCF_ORG
cf target -s $OSCF_SPACE
cf push $appname

echo "Finished $0"
