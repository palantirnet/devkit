#!/bin/bash -x
export PATH="$PATH:/home/vagrant/.rvm/rubies/ruby-2.5.2/bin"
cd /tmp/tests
bundle install --path=vendor
bundle exec rake spec
