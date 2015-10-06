#!/bin/bash

#updating the system
apt-get update

#installing the dependencies
echo "installing the dependencies"
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

#download the rbenv
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv

#put rbnev in your path
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

rbenv install 2.2.3
rbenv global 2.2.3
ruby -v

#===============================================================================================================================================================

#dependencies for rails
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs

#install rails
gem install rails

rbnev rehash

rails -v

echo "This program was made by Suyog Soti."
echo "Please Contact him at suyog.soti@gmail.com for any questions."
