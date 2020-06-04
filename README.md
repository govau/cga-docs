# cloud.gov.au docs

[![CircleCI](https://circleci.com/gh/govau/cga-docs/tree/master.svg?style=svg)](https://circleci.com/gh/govau/cga-docs/tree/master)

This repository contains the site code for docs.cloud.gov.au, the cloud.gov.au documentation.

_Disclaimer: this documentation is MVP and currently aimed at digital transformations in Alpha_

## Contributing

We're so glad you're thinking about contributing to docs.cloud.gov.au. If you're unsure about anything, just ask -- or submit the issue or pull request anyway. The worst that can happen is you'll be politely asked to change something. We love all friendly contributions. You can read our [contributing guide](https://github.com/govau/cga-docs/blob/master/contributing.md) for more detailed information.

### Ways to contribute

1. Send a pull request with your proposed changes
2. [Raise an issue](https://github.com/govau/cga-docs/issues)

### Proposing content updates with github.com

We want the cloud.gov.au documentation to be the best it can be. We've open-sourced our docs and we welcome any pull requests if you would like to contribute.

1. Navigate to the file within [`/docs`](https://github.com/govau/cga-docs/tree/master/docs) that you'd like to edit. Our documents are organised into folders that represent the sections and subsection of cloud.gov.au)
2. Click the pencil icon in the top right corner to edit the file
3. Make your proposed changes
4. Click "Propose file change"
5. Click "Create pull request"
6. Add a descriptive title and detailed description for your proposed change. The more information the better.
7. Click "Create pull request"

That's it! You'll be automatically subscribed to receive updates as others review your proposed change and provide feedback.

# Running the site locally

The following assumes you have python installed locally.

* `pip install mkdocs`
* Install dependencies with `pip install -r requirements.txt`
* `mkdocs serve`
* browse to http://localhost:4000

## Run accessibility tests using pa11y

Install pa11y and it's dependencies with:

`make pa11y-install`

Make sure you are running the latest dependencies for the app with:

`pip install -r requirements.txt`

Make sure you have the app running locally with:

`mkdocs serve`

Run the test with:

`make pa11y-test`

## Modifying UI theme, css, pages and other front end elements

* The theme that this site is using is set from this repo - https://github.com/AusDTO/mkdocs-gov-au-theme
* Theme files are located in this folder - https://github.com/AusDTO/mkdocs-gov-au-theme/tree/master/gov_au_theme
* However it is easier to update UI by modifying files in theme_overrides in this repo
* The files in theme_overrides will need to match the structure in https://github.com/AusDTO/mkdocs-gov-au-theme/tree/master/gov_au_theme
