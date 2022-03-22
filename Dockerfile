FROM openjdk:8-slim

ARG AVRO_CLI_VERSION=0.2.7
ENV AVRO_CLI_JAR /avro-cli/avro-cli-${AVRO_CLI_VERSION}.jar
LABEL maintainer="KPN NV"

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && mkdir -p /avro \
    && mkdir -p /avro-cli \
    && cd /avro-cli \
    && wget --no-verbose https://github.com/rkluszczynski/avro-cli/releases/download/avro-cli-${AVRO_CLI_VERSION}/avro-cli-${AVRO_CLI_VERSION}.jar

WORKDIR /avro

ENTRYPOINT java -jar $AVRO_CLI_JAR $0 $@
CMD ["--help"]