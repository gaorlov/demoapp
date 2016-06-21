#!/bin/bash

set -e -x

# bundle install --without production deployment
# bin/rake test

# curl -sL https://deb.nodesource.com/setup_4.x | bash -
# apt-get install -y nodejs
#
# pushd master
bundle install --local --deployment --without deployment
bin/rake
# popd
