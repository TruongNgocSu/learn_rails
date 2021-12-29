FROM ruby:2.6.6

WORKDIR /app

ARG USER_ID
ARG GROUP_ID
 
RUN addgroup --gid $GROUP_ID user
RUN adduser --uid $USER_ID --gid $GROUP_ID user

COPY Gemfile* /

RUN gem install bundler:2.2.28
RUN bundle install

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs liblzma-dev libmariadb-dev

RUN chown -R user:user /app
USER $USER_ID

#EXPOSE 3000
#ENTRYPOINT ["bin/rails"]
#CMD ["server", "-u", "puma", "-b", "0.0.0.0", "-p", "3000"]
