require 'serverspec'
require 'net/ssh'

set :backend, :exec

# Set PATH (OEL 5 does not include /sbin by default)
set :path, '/usr/local/sbin:/usr/sbin:/sbin:$PATH'
