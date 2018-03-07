FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y --no-install-recommends\
  build-essential \
  imagemagick \
  libpq-dev \
  nodejs \
  postgresql \
  postgresql-contrib

RUN mkdir /ProjectData

WORKDIR /ProjectData

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
