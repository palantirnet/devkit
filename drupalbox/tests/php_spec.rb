require_relative 'spec_helper'

describe package('php5-cli'), :if => os[:release] == '14.06' do
  it { should be_installed }
end

%w{
  cli
  curl
  gd
  intl
  json
  mcrypt
  mysql
  sqlite
  memcached
  xdebug
}.each do |pkg|
  describe package("php5-#{pkg}"), :if => os[:release] == '14.06' do
    it { should be_installed }
  end

  describe package("php7.0-#{pkg}"), :if => os[:release] == '16.06' do
    it { should be_installed }
  end

  # cli and sqlite are not valid extension names
  # xdebug is checked differently, below
  unless %w{cli sqlite xdebug}.include?(pkg)
    context php_extension(pkg) do
      it { should be_loaded }
    end
  end
end

if os[:release] == '14.06'
    # xdebug is enabled for apache2
    describe file('/etc/php5/apache2/conf.d/220-xdebug.ini') do
        it { should be_symlink }
    end

    # xdebug is disabled for cli
    describe file('/etc/php5/cli/conf.d/xdebug.ini') do
        it { should_not exist }
    end
end

describe 'PHP config parameters' do
  context php_config('session.cache_expire') do
    its(:value) { should eq 30 }
  end

  context php_config('memory_limit') do
    its(:value) { should eq '256M'}
  end

  context php_config('error_reporting') do
    its(:value) { should eq '-1' }
  end

end
