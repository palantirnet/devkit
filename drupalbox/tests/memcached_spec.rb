require_relative 'spec_helper'

describe package('memcached') do
  it { should be_installed }
end

=begin
  libmemcached-tools installs the following commands:
  - memccat
  - memcflush
  - memcrm
  - memccp
  - memcstat
  - memcslap
=end

describe package('libmemcached-tools') do
  it { should be_installed }
end

%w{memccat memcflush memcrm memccp memcstat memcslap}.each do |name|
  describe command("which #{name}") do
    its(:exit_status) { should eq 0 }
  end
end
