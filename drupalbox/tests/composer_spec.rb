require_relative 'spec_helper.rb'

describe file('/usr/local/bin/composer') do
    it { should exist }
    it { should be_executable }
end

describe file('/home/vagrant/.bashrc') do
    it { should contain 'export PATH="$HOME/.config/composer/vendor/bin:$PATH"' }
end
