require_relative 'spec_helper.rb'

describe package('nodejs') do
    it { should be_installed }
end
