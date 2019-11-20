FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN gem install bundler -v 2.0.2 
RUN bundle install
COPY . /myapp



# FROM ruby:2.5.3-stretch
# COPY . /application
# WORKDIR /application
# ENV RAILS_ENV production
# RUN gem install bundler -v 2.0.2 \
#     bundle install --deployment --without development test \
#     curl -sL https://deb.nodesource.com/setup_10.x | bash - \
#     && apt install -y nodejs

# ENTRYPOINT ./entrypoint.sh
