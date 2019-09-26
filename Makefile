
PACKER:=$(shell which packer)
PACKER_BUILD=build
VERSION=
BOX=palantir/drupalbox
.PHONY: drupalbox

all:
	$(PACKER) $(PACKER_BUILD) -var-file=drupalbox/ubuntu.json -except=vagrant-cloud drupalbox/drupalbox.json

virtualbox:
	$(PACKER) $(PACKER_BUILD) -only=virtualbox-iso -var-file=drupalbox/ubuntu.json -except=vagrant-cloud drupalbox/drupalbox.json

vmware:
	$(PACKER) $(PACKER_BUILD) -only=vmware-iso -var-file=drupalbox/ubuntu.json -except=vagrant-cloud drupalbox/drupalbox.json

drupalbox: virtualbox

vagrant-cloud:
ifeq ($(VAGRANT_CLOUD_TOKEN),)
	@echo
	@echo Please set your VAGRANT_CLOUD_TOKEN environment variable:
	@echo '  1. Log in to Vagrant Cloud at https://app.vagrantup.com'
	@echo '  2. Create a new authentication token for your account'
	@echo '  3. Set the environment variable with:'
	@echo '      export VAGRANT_CLOUD_TOKEN='
	@echo
else ifeq ($(VERSION),)
	@echo
	@echo
	@echo This command will release a new version of $(BOX):
	@echo
	@vagrant cloud box show $(BOX)
	@echo
	@echo "Please provied a version number by re-running with this syntax:"
	@echo "  make vagrant-cloud VERSION="
	@echo
else
	@echo
	@echo Creating a new release: '$(BOX) $(VERSION)'
	@echo
	packer build -only=virtualbox-iso -var-file=drupalbox/ubuntu.json -var 'cloud_dest=$(BOX)' -var 'cloud_version=$(VERSION)' drupalbox/drupalbox.json
endif
