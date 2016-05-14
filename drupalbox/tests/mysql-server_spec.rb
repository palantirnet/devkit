require_relative 'spec_helper'

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
    it { should be_enabled }
    it { should be_running }
end

describe 'MySQL config parameters' do
    context mysql_config('max-allowed-packet') do
      its(:value) { should >= 16777216 }
    end

    context mysql_config('bind-address') do
      its(:value) { should eq '0.0.0.0' }
    end
end

describe port(3306) do
  it { should be_listening }
end
