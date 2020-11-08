FROM ruby:2.6.6

WORKDIR /tester

COPY ./Gemfile* ./

RUN bundle install

COPY ./ ./

RUN chmod +x bin/*

ENV PATH="/tester/bin:${PATH}"

CMD ["bash"]
