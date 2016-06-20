FROM avvo/ruby-rails
MAINTAINER Jeff Ching <ching.jeff@gmail.com>

ENV APP_HOME /srv/demoapp/current
RUN mkdir -p $APP_HOME/lib
WORKDIR $APP_HOME

# Add Gemfile/install gems before touching application code
ADD Gemfile* $APP_HOME/

RUN bundle install --local --deployment --without deployment development test

# Add the rest of the application code
ADD . $APP_HOME

ENV RAILS_ENV production
ENV RACK_ENV production
ENV WORKERS 4

EXPOSE 3000

ENTRYPOINT ["bin/rails"]
CMD ["server"]
