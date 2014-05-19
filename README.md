Bookshare Subtheme
==================

## Compiling CSS and JavaScript

Bookshare uses [Grunt](http://gruntjs.com/) with convenient methods for working with the framework. It's how we compile our code, run tests, and more. To use it, install the required dependencies as directed and then run some Grunt commands.

### Install Grunt

From the command line:

1. Install `grunt-cli` globally with `npm install -g grunt-cli`.
2. Navigate to the root `/bookshare` directory, then run `npm install`. npm will look at package.json and automatically install the necessary local dependencies listed there.

When completed, you'll be able to run the various Grunt commands provided from the command line.

**Unfamiliar with npm? Don't have node installed?** That's a-okay. npm stands for [node packaged modules](http://npmjs.org/) and is a way to manage development dependencies through node.js. [Download and install node.js](http://nodejs.org/download/) before proceeding.

### Install Bower

1. `npm install -g bower`
2. From the project directory `bower install`


### Install Bundler for Ruby Dependencies

1. `$ gem install bundler` will install [bundler](http://bundler.io/)
2. `$ bundle` will install the rest of the gems needed.
