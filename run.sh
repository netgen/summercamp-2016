#!/usr/bin/env bash

# ezsylius setup
#function ezsylius_setup() {
#  echo "Running ezsylius workshop setup..."
#  ( cd workshops/ezpublish-community-sylius &&
#    git checkout sylius_integration &&
#    git pull origin sylius_integration &&
#    sudo ln -sf /var/www/summercamp/workshops/ezpublish-community-sylius/installation/vhost /etc/apache2/sites-enabled/ezsylius.conf &&
#    sudo sh ./installation/run.sh
#  )
#}


function all() {
#  ezsylius_setup
}

echo "Running github token setup..."
# PLEASE DO NOT USE THIS TOKEN IN YOUR OWN PROJECTS/FORKS",
# This token is reserved for fetching summer camp repositories",
# You create your own token without(!) any scope to use same approach",
composer config -g github-oauth.github.com "4dd9fefd938753073b2915b2ecd052d288370e8f"

# setup the submodules
git submodule init
git submodule update

# get argument
if [ -z "$1" ]
then
   all
else
  "$1_setup"
fi

source ~/.bashrc

echo "Reloading apache..."
sudo service apache2 restart
