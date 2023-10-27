FROM ruby:3.1.3 as web
WORKDIR /app

COPY Gemfile* ./
RUN bundle install --jobs=2
COPY . .

EXPOSE 3000
