# Devkit

## Updating an existing box

Use the makefile to build the drupalbox (virtualbox only):

```
make drupalbox
```

Use the makefile to build only one of either virtualbox or vmware:

```
make virtualbox
make vmware
```

_Note: the vmware build is not actively maintained at this time._

You can also use Packer directly to build the drupalbox:

```
packer build -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json
packer build -only=virtualbox-iso -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json
```

Both of these approaches run similar commands, but running packer directly gives you the opportunity to use flags to manipulate the build process in a one-off fashion. Try `packer --help build` for details.

## Releasing a box to Vagrant Cloud

```
vagrant login
packer build -only=virtualbox-iso -var-file=drupalbox/ubuntu.json -var 'cloud_dest=palantir/drupalbox' -var 'cloud_version=999' drupalbox/drupalbox.json
```
