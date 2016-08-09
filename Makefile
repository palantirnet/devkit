
PACKER:=$(shell which packer)
PACKER_BUILD=build
.PHONY: devkit drupalbox ubuntu1404 ubuntu1604

drupalbox1404: drupalbox1404-vmware drupalbox1404-virtualbox

drupalbox1404-vmware:
	$(PACKER) $(PACKER_BUILD) --only=vmware-iso --var-file=drupalbox/ubuntu1404.json drupalbox/drupalbox.json

drupalbox1404-virtualbox:
	$(PACKER) $(PACKER_BUILD) --only=virtualbox-iso --var-file=drupalbox/ubuntu1404.json drupalbox/drupalbox.json

drupalbox1604:
	$(PACKER) --var-file=drupalbox/ubuntu1604.json drupalbox/drupalbox.json

ubuntu1404:
	$(PACKER) ubuntu1404/ubuntu1404.json

ubuntu1604:
	$(PACKER) ubuntu1604/ubuntu1604.json
