FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER Mustafa Simav <ms@msimav.net>

ENV SBT_VERSION 0.13.9
ENV PATH ${PATH}:/usr/local/sbt/bin

RUN apk add --no-cache bash && \
    wget -qO - "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" \
    | tar -zx -C /usr/local && \
    sbt sbt-version

