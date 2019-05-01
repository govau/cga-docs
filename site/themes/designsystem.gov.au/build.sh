#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# cause a pipeline (for example, curl -s http://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors not just the last command of the pipeline.
set -o pipefail

# echo out each line of the shell as it executes
set -x

# cd to the src dir
cd "$( dirname "${BASH_SOURCE[0]}" )/src"

# install the packages
npm install

# run pancake
node_modules/@gov.au/pancake/bin/pancake

# build the theme
npm run-script build
