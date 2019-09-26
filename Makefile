
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
ifeq ($(VERSION),)
	@echo
	@echo This command will release a new version of $(BOX):
	@echo
	@vagrant cloud box show $(BOX)
	@echo

	@echo "Please provied a version number by re-running with this syntax:"
	@echo "  make vagrant-cloud VERSION=1.2.3"
	@echo
else
	@echo
	@echo Creating a new release: '$(BOX) $(VERSION)'
	@echo
	packer build -only=virtualbox-iso -var-file=drupalbox/ubuntu.json -var 'cloud_dest=$(BOX)' -var 'cloud_version=$(VERSION)' drupalbox/drupalbox.json
endif
