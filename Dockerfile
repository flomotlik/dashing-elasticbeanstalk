FROM phusion/passenger-ruby21

RUN gem install bundler

ADD . /home/app

WORKDIR /home/app
RUN bundle install

EXPOSE 3030
CMD ["/home/app/start_dashing.sh"]
