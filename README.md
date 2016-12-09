# Devkit

Devkit is a framework to build Vagrant boxes for our projects' development environments. This framework uses many tools including Packer, Ansible, Atlas, Vagrant, and ServerSpec.

## Development Requirements

- Packer 0.11.0
- Ansible 2.0
- VMWare
- VirtualBox
- Vagrant
- Vagrant VMWare plugin

## Current Boxes

- palantir/ubuntu1404
- palantir/ubuntu1604
- palantir/[drupalbox](drupalbox) - [Change Log](drupalbox/CHANGELOG-0.0.md)

## Docs

- [How Devkit Works](docs/How-Devkit-Works.md)
- [Creating a new box](docs/Creating-New-Box.md)
- [Updating an existing box](docs/Updating-Existing-Box.md)
- [Writing tests](docs/Writing-Tests.md)

## Support

This project uses the [GitHub issue queue](https://github.com/palantirnet/devkit/issues).
