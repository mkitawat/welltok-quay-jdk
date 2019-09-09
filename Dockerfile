FROM quay.io/welltok/base-images:openjdk-11.0.3-16.04-latest

RUN apt-get update && apt-get install -y maven

ARG MAVEN_USER_HOME=/var/lib/maven

ENV MAVEN_USER_HOME ${MAVEN_USER_HOME}
ENV MAVEN_OPTS -Duser.home=$MAVEN_USER_HOME

VOLUME $MAVEN_USER_HOME