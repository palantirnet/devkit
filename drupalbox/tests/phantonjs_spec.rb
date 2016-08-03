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

describe file('/etc/init/phantomjs.conf'), :if => os[:release] == '14.04' do
    it { should exist }
end

describe file('/lib/systemd/system/phantomjs.service'), :if => os[:release] == '16.04' do
    it { should exist }
end

describe service('phantomjs') do
    it { should be_enabled }
    it { should be_running }
end
