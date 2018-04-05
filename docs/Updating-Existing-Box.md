# Devkit

*** We cannot push builds to [Atlas since it does not support](https://github.com/mitchellh/packer/issues/2598) `-var-file`, [even though the documentation says it does](https://www.packer.io/docs/command-line/push.html#_var).

## Updating an existing box

Use the makefile to build the drupalbox:

```
make drupalbox
```

Or, use Packer directly to build the drupalbox:

```
packer build -var-file=drupalbox/ubuntu.json drupalbox/drupalbox.json
```

Both of these approaches run the same command, but running packer directly gives you the opportunity to use flags to manipulate the build process. Try `packer --help build` for details.