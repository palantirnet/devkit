require_relative 'spec_helper.rb'

describe package('firefox') do
    it { should be_installed }
end

describe file('/usr/local/src/phantomjs') do
    it { should be_directory }
end

describe file('/usr/local/bin/phantomjs') do
    it {should be_symlink }
end

describe file('/etc/init/phantomjs.conf') do
    it { should exist }
end

describe service('phantomjs') do
    it { should be_enabled }
    it { should be_running }
end
