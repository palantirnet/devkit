require_relative 'spec_helper.rb'

describe file("/opt/solr") do
  it { should be_directory }
end

describe file("/var/log/solr.log") do
  it { should be_file }
  it { should be_owned_by 'solr' }
  it { should be_grouped_into 'adm' }
end

describe service('solr') do
  it { should be_enabled }
  it { should be_running }
end

describe port(8983) do
  it { should be_listening }
end

describe command('curl http://127.0.0.1:8983/solr/admin/info/system?wt=json') do
  its(:stdout) { should match /"solr-spec-version":"4\.5\.1"/ }
end
