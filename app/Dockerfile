FROM ruby:alpine

ADD app.rb app.rb
RUN chmod +x app.rb \
    && gem install redis \
    && apk add --update busybox-extras \
    && rm -rf /var/cache/apk/*

ENTRYPOINT './app.rb'
