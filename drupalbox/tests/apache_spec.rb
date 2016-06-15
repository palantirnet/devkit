require_relative 'spec_helper.rb'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
    it { should be_enabled }
    it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/var/www/html') do
    it { should_not be_directory }
end

describe file('/etc/apache2/sites-available/000-default.conf') do
    it { should_not exist }
end

describe file('/etc/apache2/sites-available/default-ssl.conf') do
    it { should_not exist }
end
