#!/bin/bash

set -e -x

curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get install -y nodejs

pushd demoapp
  bundle install
  bin/rake
popd
