FROM quay.io/welltok/base-images:openjdk-11.0.3-16.04-latest

RUN apt-get update && apt-get install -y maven3