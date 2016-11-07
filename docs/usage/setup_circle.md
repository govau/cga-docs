CircleCI is the tool we currently use for automating the testing and deployment of applications on cloud.gov.au. It will only work for source code hosted on GitHub or Bitbucket.

CircleCI will watch your projects source code and when changes are detected it will automatically run tests and deploy your application to cloud.gov.au. This is part of continuous delivery, continuous deployment and continuous integration.

## Add circle.yml file

We configure the projects CircleCI configuration using circle.yml file.

We recommend you setup your circle.yml file like this:

```
machine:
```

Run through what each section is for:

- machine: adjusting the Virtual Machine to your preferences and requirements
- checkout: checking out and cloning your git repo
- dependencies: setting up your project’s language-specific dependencies
- database: preparing the databases for your tests
- test: running your tests
- deployment: deploying your code to your web servers

Example files to get you started:

 - link 1
 - link 2

Deploy by tag
Deploy only certain branches
Deploy all branches
How environment variables work
Abstract setup and deploy files

## Add an integration to slack
