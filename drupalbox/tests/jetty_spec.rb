require_relative 'spec_helper'

describe user('jetty') do
  it { should exist }
  it { should belong_to_primary_group 'jetty' }
end

describe package('jetty9') do
  it { should be_installed }
end

describe package('libjetty-extra') do
  it { should be_installed }
end

describe service('jetty9') do
  it { should_not be_enabled }
end
