
PACKER:=$(shell which packer)
PACKER_BUILD=build
.PHONY: drupalbox

drupalbox:
	$(PACKER) $(PACKER_BUILD) -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json
