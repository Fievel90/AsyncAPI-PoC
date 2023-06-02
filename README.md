# AsyncAPI PoC

This repository was created with the goal to test AsyncAPI generators and review models and templates created.

## Content

In this project can be found:

* `cli/` folder used to build a docker image with AsyncAPI CLI already bundled;
* `schemas/` folder containing some JSON schema referenced in the AsyncAPI yaml file;
* `asyncapi.yaml` file used as an example for generating models and templates;

## Usage

Available commands:

* `make clean`: removes docker containers, generated models and templates, in order to clean the repository as it was just cloned;
* `make run`: run default docker containers used to generate models and templates;
* `make gen-models`: generates typescript and PHP models;
* `make gen-templates`: generates Node.JS and PHP templates;
