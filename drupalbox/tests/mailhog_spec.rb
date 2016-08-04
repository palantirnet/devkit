require_relative 'spec_helper'

%w{mailhog mhsendmail}.each do |name|
  describe command("which #{name}") do
    its(:exit_status) { should eq 0 }
  end
end

describe process("mailhog") do
  it { should be_running }
  its(:user) { should eq "mailhog" }
end
