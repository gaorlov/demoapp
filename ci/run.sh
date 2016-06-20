#!/bin/bash

set -e -x

pushd demoapp
  bundle install
  bin/rake
popd
