# Devkit

*** We cannot push builds to [Atlas since it does not support](https://github.com/mitchellh/packer/issues/2598) `-var-file`, [even though the documentation says it does](https://www.packer.io/docs/command-line/push.html#_var).

## Updating an existing box

1. Update the box version in the packer template file.
1. From the repository root run the following command:
```
$ packer build -var-file=drupalbox/ubuntu1604.json drupalbox/drupalbox.json
```
