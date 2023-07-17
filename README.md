# Groundwork Starter Node

A Groundwork Starter Application for Node.

## Usage

This is a very simple starter app written in Node.js that can act as a demo for the Groundwork Delivery platform.

To use this app, you will need to:

* Create an [App Runner](https://aws.amazon.com/apprunner/) service set up to deploy from a [source image](https://docs.aws.amazon.com/apprunner/latest/dg/service-source-image.html) (e.g., Amazon ECR).
* Create repository secrets for the deployment workflow to create and publish a new image to ECR (or whatever image repo you are using).
* Create a repository secret for [Snyk](https://snyk.io/lp/nodejs/).

There are two workflows that run when changes are pushed (they can be configured to run whenever):

* `snyk.yml` - Workflow for Node using Snyk
* `aws.yml` - Deploy container image to Amazon ECR

The three secrets that need to be created for these workflows to run are:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`
* `SNYK_TOKEN`