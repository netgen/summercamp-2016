#!/usr/bin/env bash

# fieldtypes setup
function fieldtypes_setup() {
  echo "Running fieldtypes workshop setup..."
  ( cd workshops/fieldtypes &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/fieldtypes/installation/vhost /etc/apache2/sites-enabled/fieldtypes.conf &&
    sudo sh ./installation/run.sh
  )
}

# phpstorm setup
function phpstorm_setup() {
  echo "Running phpstorm workshop setup..."
  ( cd workshops/phpstorm &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/phpstorm/installation/vhost /etc/apache2/sites-enabled/phpstorm.conf &&
    sudo sh ./installation/run.sh
  )
}

# ubiquitous setup
function ubiquitous_setup() {
  echo "Running ubiquitous workshop setup..."
  ( cd workshops/ubiquitous &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/ubiquitous/installation/vhost /etc/apache2/sites-enabled/ubiquitous.conf &&
    sudo sh ./installation/run.sh
  )
}

# httplug setup
function httplug_setup() {
  echo "Running httplug workshop setup..."
  ( cd workshops/httplug &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/httplug/installation/vhost /etc/apache2/sites-enabled/httplug.conf &&
    sudo sh ./installation/run.sh
  )
}

# sulu setup
function sulu_setup() {
  echo "Running sulu workshop setup..."
  ( cd workshops/sulu &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/sulu/installation/vhost /etc/apache2/sites-enabled/sulu.conf &&
    sudo sh ./installation/run.sh
  )
}

# api4ez setup
function api4ez_setup() {
  echo "Running api4ez workshop setup..."
  ( cd workshops/api4ez &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/api4ez/installation/vhost /etc/apache2/sites-enabled/api4ez.conf &&
    sudo sh ./installation/run.sh
  )
}

# forms setup
function forms_setup() {
  echo "Running forms workshop setup..."
  ( cd workshops/forms &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/forms/installation/vhost /etc/apache2/sites-enabled/forms.conf &&
    sudo sh ./installation/run.sh
  )
}

# headless setup
function headless_setup() {
  echo "Running headless workshop setup..."
  ( cd workshops/headless &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/headless/installation/vhost /etc/apache2/sites-enabled/headless.conf &&
    sudo sh ./installation/run.sh
  )
}

# sylius setup
function sylius_setup() {
  echo "Running sylius workshop setup..."
  ( cd workshops/sylius &&
    git checkout master &&
    git pull origin master &&
    sudo sh ./installation/run.sh
  )
}

# sylius-handouts setup
function sylius_handouts_setup() {
  echo "Running sylius handouts workshop setup..."
  ( cd workshops/sylius-handouts &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/sylius-handouts/installation/vhost /etc/apache2/sites-enabled/sylius-handouts.conf
  )
}

# lightning setup
function lightning_setup() {
  echo "Running lightning workshop setup..."
  ( cd workshops/lightning &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/lightning/installation/vhost /etc/apache2/sites-enabled/lightning.conf &&
    sudo sh ./installation/run.sh
  )
}

# nofw setup
function nofw_setup() {
  echo "Running nofw workshop setup..."
  ( cd workshops/nofw &&
    git checkout master &&
    git pull origin master &&
    sudo ln -sf /var/www/summercamp/workshops/nofw/installation/vhost /etc/apache2/sites-enabled/nofw.conf &&
    sudo sh ./installation/run.sh
  )
}

# oop setup
function oop_setup() {
  echo "Running oop workshop setup..."
  ( cd workshops/oop &&
    git checkout master &&
    git pull origin master &&
    sudo sh ./bin/setup
  )
}

function all() {
  fieldtypes_setup
  httplug_setup
  sulu_setup
  api4ez_setup
  forms_setup
  sylius_setup
  sylius_handouts_setup
  lightning_setup
  headless_setup
  oop_setup
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
