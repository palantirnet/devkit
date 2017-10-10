require_relative 'spec_helper'

# Different PHP cli packages should be installed depending on the Ubuntu version.
describe package("php7.0-cli") do
  it { should be_installed }
end

# These PHP extensions should be installed and enabled
%w{
  curl
  gd
  intl
  json
  mbstring
  mcrypt
  sqlite3
  xml
  memcached
  xdebug
}.each do |pkg|
  # The PHP extension's package should be installed from apt.
  describe package("php7.0-#{pkg}") do
    it { should be_installed }
  end

  # The PHP extension should be enabled.
  context php_extension(pkg) do
    it { should be_loaded }
  end
end

# The MySQL extension uses different naming patterns between PHP 5 and 7.
describe package("php7.0-mysql") do
  it { should be_installed }
end

context php_extension("mysqli") do
  it { should be_loaded }
end

# XDebug should be enabled for Apache, but disabled for the CLI
describe file('/etc/php/7.0/apache2/conf.d/20-xdebug.ini') do
    it { should be_symlink }
end
describe file('/etc/php/7.0/cli/conf.d/20-xdebug.ini') do
    it { should_not exist }
end

# The yaml extension is installed from pecl, not apt, so here we just check
# that it's enabled.
context php_extension('yaml') do
  it { should be_loaded }
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
