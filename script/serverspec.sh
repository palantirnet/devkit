#!/bin/bash
# This script is run during the Packer build process.

# Wherever the tests are expected to live.
tests_path="/tmp/tests"
specs_path="/tmp/tests/specs/*_spec.rb"

# Load rvm into this session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Run serverspec
cd "$tests_path"
bundle install --path=vendor
bundle exec rake spec["$specs_path"]
