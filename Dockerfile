FROM google/dart

LABEL description='Docker image that contains latest dart and firebase-tools CLI'
LABEL version="1.0.0"
LABEL firebase-version='7.7.0'
LABEL dart-version="2.6.1"

ENV PATH="/root/.pub-cache/bin:${PATH}"

RUN apt-get update
RUN	curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN	apt-get install -y nodejs
RUN	pub global activate webdev
ENV PATH="/root/.pub-cache/bin:${PATH}"