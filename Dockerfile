FROM google/dart

LABEL description='Docker image that contains latest dart and firebase-tools CLI'
LABEL version="1.0.0"
LABEL firebase-version='7.7.0'
LABEL dart-version="2.6.1"

ENV PATH="/root/.pub-cache/bin:${PATH}"

RUN apt-get update
RUN	curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN	apt-get update && apt-get install -y nodejs yarn
RUN npm -g -i firebase-tools
RUN	pub global activate webdev