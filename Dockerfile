FROM ubuntu:latest

LABEL description='Docker image that contains latest dart and firebase-tools CLI'
LABEL version="1.0.0"
LABEL firebase-version='7.7.0'
LABEL dart-version="2.6.1"

ENV PATH="/root/.pub-cache/bin:${PATH}"

RUN apt-get update
RUN apt-get install apt-transport-https
RUN curl -sL https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -sL https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn
RUN npm i -g firebase-tools
RUN pub global activate webdev