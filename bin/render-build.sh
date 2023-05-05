#!/usr/bin/env bash

# ./bin/render-build.sh for 
# exit on error
set -o errexit

bundle install
# API only build here... no assets :-)
# bundle exec rake assets:precompile
# bundle exec rake assets:clean
bundle exec rake db:migrate