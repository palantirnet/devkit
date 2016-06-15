require_relative 'spec_helper.rb'

describe file('/home/vagrant/.my.cnf') do
    it { should exist }
end

describe "'drupal' database exists" do
  describe command(
    "echo \"SHOW DATABASES LIKE 'drupal'\" | mysql"
  ) do
    its(:stdout) { should match /drupal/ }
  end
end

describe file('/etc/apache2/conf-available/phpmyadmin.conf') do
    it { should exist }
end
