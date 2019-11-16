FROM google/dart

RUN apt-get update
RUN	curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN	apt-get install -y nodejs
RUN	pub global activate webdev
RUN	npm i -g firebase-tools
ENV PATH="/root/.pub-cache/bin:${PATH}"