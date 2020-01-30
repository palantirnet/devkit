require_relative 'spec_helper.rb'

describe file("/opt/solr") do
  it { should be_directory }
end

describe file("/var/solr/data/example") do
  it { should be_directory }
end

describe file("/var/solr/logs/solr.log") do
  it { should be_file }
  it { should be_owned_by 'solr' }
  it { should be_grouped_into 'solr' }
end

describe service('solr') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8983) do
  it { should be_listening }
end

describe command('curl http://127.0.0.1:8983/solr/admin/info/system') do
  its(:stdout) { should match /"solr-spec-version":"7\.7\.2"/ }
end
