#!/bin/bash
# Script for installing Rails on an Ubuntu 12.04 LTS EC2 instance

# Install modules without documentation by default:
echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc
tail ~/.gemrc

# Check to see updates, etc
sudo apt-get update
sudo apt-get install -y \
  git \
  build-essential \
  curl \
  wget

# Tell bash to load rvm each login:
echo "[[ -s '${HOME}/.rvm/scripts/rvm' ]] && source '${HOME}/.rvm/scripts/rvm'" >> ~/.bashrc

#Install rvm:
curl -L https://get.rvm.io | bash -s stable

#trim this up a bit maybe?
sudo apt-get install -y \
  build-essential \
  openssl \
  libreadline6 \
  libreadline6-dev \
  curl \
  git-core \
  zlib1g \
  zlib1g-dev \
  libssl-dev \
  libyaml-dev \
  libxml2-dev \
  libxslt-dev \
  autoconf \
  libc6-dev \
  ncurses-dev \
  automake \
  libtool \
  bison \
  subversion \
  pkg-config \
  sqlite3 \
  libsqlite3-dev

# Install Ruby:
curl -L https://get.rvm.io | bash -s stable --ruby

source ~/.rvm/scripts/rvm
rvm reload
rvm use default
ruby --version

# Bundler and Cyaml:
gem install cyaml --no-ri --no-rdoc
gem install bundler --no-ri --no-rdoc

# Install Rails:
gem install rails

# Heroku install
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
