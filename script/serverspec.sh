#!/bin/bash
gem install bundler --no-ri --no-rdoc
cd /tmp/tests
bundle install --path=vendor
sudo bundle exec rake spec
