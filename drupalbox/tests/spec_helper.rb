require 'serverspec'
require 'net/ssh'

# Use the ssh backend when testing via Vagrant
# set :backend, :ssh

# Use the exec backend when testing via Packer
# set :backend, :exec

# Set PATH (OEL 5 does not include /sbin by default)
set :path, '/usr/local/sbin:/usr/sbin:/sbin:$PATH'
