FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn
RUN mkdir /aewa
WORKDIR /aewa
ADD Gemfile /aewa/Gemfile
ADD Gemfile.lock /aewa/Gemfile.lock
RUN bundle install
ADD . /aewa
