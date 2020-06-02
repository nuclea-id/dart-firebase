FROM google/dart:latest

LABEL description='Docker image that contains latest dart and firebase-tools CLI'
LABEL version="1.0.5"
LABEL firebase-version='8.4.1'
LABEL dart-version="2.8.3"

ENV PATH="/root/.pub-cache/bin:${PATH}"

RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y nodejs yarn

ENV PATH="$(yarn global bin):$PATH"

RUN yarn global add firebase-tools
RUN pub global activate webdev
