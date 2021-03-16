FROM ruby:2.7.1-alpine

ENV PORT=3000 \
  HOST=0.0.0.0

RUN apk add --update build-base bash

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY ./ ./

EXPOSE ${PORT}

CMD ["shotgun", "config.ru"]
