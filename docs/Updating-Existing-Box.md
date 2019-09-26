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

Both of these approaches run similar commands, but running packer directly gives you the opportunity to use flags to manipulate the build process in a one-off fashion. Try `packer --help build` for details, and see the `Makefile` for this project's standard usage.

## Releasing a box to Vagrant Cloud

```
make vagrant-cloud
```

## Updating Ubuntu

When Ubuntu releases a new point release of 16.04, the packer build will throw this error:

> ==> virtualbox-iso: error downloading ISO: [source path error: stat /path/to/devkit/iso/ubuntu-16.04.4-server-amd64.iso: no such file or directory bad response code: 404]

When this happens, you need to update to the new version:

1. Open `drupalbox/ubuntu.json`
3. Visit [releases.ubuntu.com/16.04](http://releases.ubuntu.com/16.04/) to find the updated values:
  * `iso_name`: ubuntu-16.04.*-server-amd64.iso
  * `iso_url`: http://releases.ubuntu.com/16.04/ubuntu-16.04.*-server-amd64.iso
  * `iso_checksum`: find this in the [SHA256SUMS](http://releases.ubuntu.com/16.04/SHA256SUMS) file for the current releases
