require_relative 'spec_helper.rb'

describe file('/home/vagrant/.config/composer/vendor/bin/drush') do
    it { should_not exist }
end

describe package('drush') do
    it { should_not be_installed }
end
