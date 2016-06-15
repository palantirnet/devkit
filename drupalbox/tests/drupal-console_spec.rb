require_relative 'spec_helper.rb'

describe file('/usr/local/bin/drupal') do
    it { should exist }
    it { should be_executable }
end
