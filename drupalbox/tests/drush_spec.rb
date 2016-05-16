require_relative 'spec_helper.rb'

describe file('/home/vagrant/.config/composer/vendor/bin/drush') do
    it { should exist }
    it { should be_executable }
end
