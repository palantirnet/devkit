
PACKER:=$(shell which packer)
PACKER_BUILD=build
.PHONY: drupalbox

all:
	$(PACKER) $(PACKER_BUILD) -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json

virtualbox:
       $(PACKER) $(PACKER_BUILD) -only=virtualbox-iso -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json

vmware:
       $(PACKER) $(PACKER_BUILD) -only=vmware-iso -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json
