# cloud.gov.au docs

This repository contains the site code for docs.cloud.gov.au, the cloud.gov.au documentation.

_Disclaimer: this documentation is MVP and currently aimed at digital transformations in Alpha_

## Contributing

* Create a branch
* Add an entry to mkdocs.yml and then create a markdown file with the content.
* Test locally
* Submit PR

Using mkdocs and circleci we are able to have continuous deployment of the documentation.  
mkdocs uses [python markdown](http://pythonhosted.org/Markdown/) to build the pages.

# Running the site locally

The following assumes you have python installed locally.

* `pip install mkdocs`
* `mkdocs serve`
* browse to http://localhost:4000

