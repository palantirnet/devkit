require_relative 'spec_helper'

# Different PHP cli packages should be installed depending on the Ubuntu version.
describe package('php5.6-cli'), :if => os[:release] == '14.04' do
  it { should be_installed }
end

describe package("php7.0-cli"), :if => os[:release] == '16.04' do
  it { should be_installed }
end

# These PHP extensions should be installed and enabled for either PHP 5 or PHP 7.
%w{
  curl
  gd
  intl
  json
  mbstring
  mcrypt
  mysql
  sqlite3
  xml
}.each do |pkg|
  # The PHP extension's package should be installed from apt.
  describe package("php5.6-#{pkg}"), :if => os[:release] == '14.04' do
    it { should be_installed }
  end

  describe package("php7.0-#{pkg}"), :if => os[:release] == '16.04' do
    it { should be_installed }
  end

  # The PHP extension should be enabled.
  context php_extension(pkg) do
    it { should be_loaded }
  end
end

if os[:release] == '14.04'
  # These packages are installed from apt, but have a different naming pattern
  # than the other PHP 5.6 extensions above.
  %w{
    memcached
    xdebug
  }.each do |pkg|
    # The PHP extension's package should be installed from apt.
    describe package("php-#{pkg}") do
      it { should be_installed }
    end
  end

  # xdebug is enabled for apache2
  describe file('/etc/php/5.6/apache2/conf.d/20-xdebug.ini') do
      it { should be_symlink }
  end

  # xdebug is disabled for cli
  describe file('/etc/php/5.6/cli/conf.d/20-xdebug.ini') do
      it { should_not exist }
  end

  # The memcached PHP extension is loaded.
  context php_extension('memcached') do
    it { should be_loaded }
  end

  # The yaml extension is installed from pecl, not apt, so here we just check
  # that it's enabled.
  context php_extension('yaml') do
    it { should be_loaded }
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
