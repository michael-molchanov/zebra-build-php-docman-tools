FROM michaeltigr/zebra-build-php-docman:0.0.82

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

USER root

# Install nodejs and grunt.
RUN apk add --update --no-cache nodejs nodejs-dev \
  && rm -rf /var/cache/apk/* \
  && npm install -g grunt-cli \
  && grunt --version

# Install compass.
RUN gem install --no-ri --no-rdoc compass
