require_relative 'spec_helper.rb'

describe file("/usr/share/solr") do
  it { should be_directory }
end

describe file("/usr/share/solr/current") do
  it { should be_symlink }
end

describe file("/var/lib/jetty/webapps/solr") do
  it { should be_symlink }
end
