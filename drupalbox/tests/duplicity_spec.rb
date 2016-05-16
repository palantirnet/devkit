require_relative 'spec_helper.rb'

describe ppa('duplicity-team/ppa') do
    it { should exist }
    it { should be_enabled }
end

describe package('duplicity') do
    it { should be_installed }
end

describe package('duply') do
    it { should be_installed }
end

describe package('python-boto') do
    it { should be_installed }
end
