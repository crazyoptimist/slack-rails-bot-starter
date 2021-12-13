FROM ruby:2.7.3
WORKDIR /app

COPY Gemfile* ./
RUN bundle install --jobs=2
COPY . .

EXPOSE 3000
