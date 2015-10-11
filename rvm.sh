#!/bin/bash

#update the system
apt-get update

#installing necessary dependencies
echo "installing dependencies"
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

#getting the repo that rvm is in
echo "Getting the repo that rvm is in"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

#downloading the rvm
echo "actually downloading rvm from that repo"
\curl -sSL https://get.rvm.io | bash -s stable

#making rvm accessible from everywhere
echo "making rvm accessible from everywhere in the terminal"
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile
echo "source $HOME/.rvm/scripts/rvm" >> ~/.bashrc

#install ruby 2.2.2
echo "installing ruby 2.2.2"
rvm install 2.2.2

#installing rails
echo "installing gem 4.2.4"
gem install 4.2.4

echo "This program was made by Suyog Soti"
echo "Please contact him through suyog.soti@gmail.com"
