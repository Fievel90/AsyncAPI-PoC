# AsyncAPI PoC

Assuming that we want to document our event driven architecture using [AsyncAPI](https://www.asyncapi.com) specification,
this repository was created with the goal to test different generators and review models and templates created.

## Content

In this project can be found:

* `cli/` folder used to build a docker image with AsyncAPI CLI already bundled;
* `generated/` folder containing the generated files;
* `schemas/` folder containing some JSON schema referenced in the AsyncAPI yaml file;
* `asyncapi.yaml` file used as an example for generating models and templates;

## Usage

In order to start the project and generate the files needed for our purpose, run the following commands:

```shell
make run
make gen-models
make gen-templates
```

After this, inside the `generated/` folder, is possible to review the models and templates created.

Furthermore, the `run` command starts also the following useful container to try the generated templates:

* `schema-registry`: NGINX container that expose the schemas file;
* `rabbitmq`: RabbitMQ container;
* `studio`: AsyncAPI Studio where is possible to look and validate `asyncapi.yaml` file;

In this way, specifying the generated services inside a `docker-compose.override.yml`, is possible to run the generated code,
for example [docker-compose.override.example.yml](docker-compose.override.example.yml).
(_Note: generated templates may need basic setup or possible fixes in order to run_)

All available `make` commands:

* `make clean`: removes docker containers, generated models and templates, in order to clean the repository as it was just cloned;
* `make run`: run default docker containers used to generate models and templates;
* `make gen-models`: generates typescript and PHP models;
* `make gen-templates`: generates Node.JS and PHP templates;
* `make apps`: run example apps generated containers;

## Resources

Templates used for service generation:
* NodeJS Template: https://github.com/asyncapi/nodejs-template
* PHP Template: https://github.com/asyncapi/php-template

Other common resources:
* AsyncAPI Website: https://www.asyncapi.com
* AsyncAPI Models Generator: https://github.com/asyncapi/modelina
* AsyncAPI Service Generator: https://github.com/asyncapi/generator
