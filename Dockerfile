FROM ruby:2.6.2

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       libxml2-dev \
                       cmake \
                       gnupg \
                       graphviz

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs \
                       npm

# 作業ディレクトリの作成、設定
ENV APP_ROOT /app
RUN mkdir $APP_ROOT
##作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
WORKDIR $APP_ROOT

# ホスト側（ローカル）のGemfileを追加する
ADD Gemfile $APP_ROOT/Gemfile
ADD Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
RUN yarn install

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

