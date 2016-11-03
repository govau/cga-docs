## Welcome

We're so glad you're thinking about contributing to docs.cloud.gov.au. If you're unsure about anything, just ask -- or submit the issue or pull request anyway. The worst that can happen is you'll be politely asked to change something. We love all friendly contributions.

## Ways to contribute

We are happy for people to propose changes to our documentation through Pull Requests. Alternatively you can [raise an issue](https://github.com/AusDTO/cga_docs/issues) detailing the problem you had and someone from the cloud.gov.au team will work with you to solve the problem.

## Proposing updates to the documentation

We want the cloud.gov.au documentation to be the best it can be. We've open-sourced our docs and we welcome any pull requests if you would like to contribute.

All the content for cloud.gov.au can be found in the `docs` folder. The content is written in [Markdown](https://daringfireball.net/projects/markdown/syntax). and organised into folders that replicate the Information Architecture structure of the site.

It's really important that we make sure our documentation is clear, concise and written in plain english where possible. Here are some tools we use to help us do this:

- [Hemmingway editor](http://www.hemingwayapp.com/) - Simple app that checks your content for readability
- [Digital Transformation Agency content styleguide](http://content-style-guide.apps.staging.digital.gov.au/)

Simply edit the relevant markdown file and send a pull request. If you are new to pull requests you can read our [pull request guide](#submitting-a-pull-request)

## Code contributions

We welcome any pull requests to fix issues and add features to docs.cloud.gov.au. Here are a
few tips about how the project is setup.

### Updating the theme

We have html, css and JS are packaged as part of a MKDocs UI Kit theme. If you would like to submit a
Pull Request to update the theme you should contribute to the  [mkdocs-gov-au-theme](https://github.com/AusDTO/mkdocs-gov-au-theme) project.

### Tests

We automatically run all tests on any Pull Requests we receive but it is still a good idea to run tests
before sending us your PR.

We currently have accessibility tests using [pa11y](http://pa11y.org/). To run these tests you will first need to install
the dependencies by running:

`make pa11y-install`

Then run the test by using:

`make pa11y-test`

## Submitting a pull request

### Pull request tips

* The smaller the proposed change, the better. If you'd like to propose two unrelated changes, submit two pull requests.

* The more information, the better. Make use of the pull request body. Describe what changes were made, why you made them, and what impact they will have for users.

* Pull request are easy and fun. If this is your first pull request, it may help to [understand GitHub Flow](https://guides.github.com/introduction/flow/).

* If you're submitting a code contribution, be sure to read the [code contributions](#code-contributions) section below.

### Submitting a pull request via github.com

Many small changes can be made entirely through the github.com web interface. **This is a great option if you
aren't a technical person.**

1. Navigate to the file within [`/docs`](https://github.com/AusDTO/cga_docs/tree/master/docs) that you'd like to edit.
2. Click the pencil icon in the top right corner to edit the file
3. Make your proposed changes
4. Click "Propose file change"
5. Click "Create pull request"
6. Add a descriptive title and detailed description for your proposed change. The more information the better.
7. Click "Create pull request"

That's it! You'll be automatically subscribed to receive updates as others review your proposed change and provide feedback.

### Submitting a pull request via Git command line

1. Fork the project by clicking "Fork" in the top right corner of [`cga_docs`](https://github.com/AusDTO/cga_docs).
2. Clone the repository locally `git clone https://github.com/<you-username>/cga_docs`.
3. Create a new, descriptively named branch to contain your change ( `git checkout -b my-new-feature` ).
4. Write your code.
5. Push the branch up ( `git push origin my-new-feature` ).
6. Create a pull request by visiting `https://github.com/<your-username>/cga_docs` and following the instructions at the top of the screen.
