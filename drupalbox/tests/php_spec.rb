require_relative 'spec_helper'

describe package('php5-cli'), :if => os[:release] == '14.06' do
  it { should be_installed }
end

describe package('php7.0-cli'), :if => os[:release] == '16.06' do
  it { should be_installed }
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
