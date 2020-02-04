#!/bin/bash
export PATH="$PATH:/home/vagrant/.rvm/rubies/ruby-2.5.2/bin"
gem install bundler --no-ri --no-rdoc
cd /tmp/tests
bundle install --path=vendor
bundle exec rake spec
