FROM quay.io/welltok/base-images:python-2.7.16-16.04-latest

USER root

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk maven

# ARG MAVEN_USER_HOME=/var/lib/maven

# ENV MAVEN_USER_HOME ${MAVEN_USER_HOME}
# ENV MAVEN_OPTS -Duser.home=$MAVEN_USER_HOME
# VOLUME $MAVEN_USER_HOME

ENV WP_USER wellpass
ENV WP_HOME /home/$WP_USER
ENV MAVEN_OPTS -Duser.home=$WP_HOME
VOLUME $WP_HOME

RUN useradd -m -d $WP_HOME $WP_USER

USER $WP_USER