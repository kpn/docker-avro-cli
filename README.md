# Docker-avro-cli

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/kpnnl/avro-cli?label=latest%20version)

Container image for [avro-cli](https://github.com/rkluszczynski/avro-cli)

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## How to create a new release

The idea of this repository is for the maintainers to trigger a github action,
in order to release a new version of the container, **if** there's a new version of the tool.

If you are not a maintainer, open a new issue and we will release a new version.

To release a new version:

1. Go to the [Publish Docker image](https://github.com/kpn/docker-avro-cli/actions/workflows/publish-container.yml) action
1. Click in `Run workflow`
1. Set the `Version to release`

![Input action example](/docs/img/version-to-release.png)

Check for new versions:

- [avro-cli releases](https://github.com/rkluszczynski/avro-cli/releases)

## Usage examples

### Pull image

```sh
docker pull kpnnl/avro-cli:0.2.7
```

### Validation example

Use to validate avro json schemas:

```sh
docker run --rm --user="$(id -u)" -v "$(pwd)":/avro \
    kpnnl/avro-cli:0.2.7 \
    validate -c BACKWARD --schema {newfile}.asvc --previousSchema {oldfile}.asvc
```

### Help

Use to validate avro json schemas:

```sh
docker run --rm kpnnl/avro-cli
```

## Acknowledgments

* Based on the work from [brandonstubbs/avro-tools](https://github.com/brandonstubbs/docker-avro-tools)