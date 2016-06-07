# Setting your project up

Congratulations, you should now have your cloud.gov.au accounts all setup.  
All you need now is to scaffold out a codebase, activate circleci and push the code to github.

## Requirements

* A workstation (preferred Linux or OSX)
* git
* browser
* cf-cli
* ruby
* jalpha rubygem

The DTO has produced a rubygem, `jalpha`, for scaffolding out an opinionated Jekyll stack for your Alpha.

## Actions

* `gem install jalpha`
* `jalpha new <projectname>`
* `cd <projectname>`
* `bin/setup`
* `git init`
* `git remote add ....`
* `git push`
* go to circleci in the browser and authorize with Github.
* follow your new github repo
* add some environment variables via the circleci UI
```
cf_basic_auth_username = "alphauser" [optional]
cf_basic_auth_password = "" [optional]
cf_staging_api = "https://api.system.staging.digital.gov.au"
cf_staging_user = "circleci-$projectname"
cf_staging_password = ""
cf_staging_org = ""
```
