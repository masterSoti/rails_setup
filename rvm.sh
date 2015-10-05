#!/bin/bash

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
