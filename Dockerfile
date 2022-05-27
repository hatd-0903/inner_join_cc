FROM ruby:2.7.5
RUN apt-get update -qq
RUN apt-get install -y git-core curl nodejs

#init project
RUN mkdir /inner_join_cc
WORKDIR /inner_join_cc
ADD Gemfile /inner_join_cc/Gemfile
ADD Gemfile.lock /inner_join_cc/Gemfile.lock

# bundle install
RUN bundle install
