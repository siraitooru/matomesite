FROM ruby:2.6.3
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

COPY . /var/docker_sample_rails
WORKDIR /var/docker_sample_rails
RUN gem update bundler
RUN bundle install
