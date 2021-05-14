### README

Docker version v18.03

[rails docker reference](https://docker-docs.netlify.app/compose/rails/)

### Dockerfile
```
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
```

### Gemfile
```
source 'https://rubygems.org'
gem 'rails', '5.2.0'
```

### Just create a lock file
```
$ touch Gemfile.lock
```

### Docker docker-compose.yml
```
version: '3'
services:
  db:
    image: postgres
    volumes:
      - ./tmp/db:/var/lib/postgresql/data
  web:
    build: .
    command: bundle exec rails s -p 3000 -b '0.0.0.0'
    volumes:
      - .:/myapp
    ports:
      - "3000:3000"
    depends_on:
      - db
```

### Build project
```
$ docker-compose run web rails new . --force --database=postgresql
$ docker-compose build
```
