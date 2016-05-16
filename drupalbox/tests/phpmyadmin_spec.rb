require_relative 'spec_helper.rb'

describe package('phpmyadmin') do
    it { should be_installed }
end
