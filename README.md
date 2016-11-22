# Devkit

Devkit is the framework in which Palantir.net builds it's Vagrant boxes for projects. Devkit uses many tools including Packer, Ansible, Atlas, Vagrant, and ServerSpec.

## Development Requirements

- Packer 0.11.0 (`brew install packer`)
- Ansible 2.0 (`brew install homebrew/versions/ansible20`, or maybe `brew switch ansible 2.0.2.0`)
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

If you run into an issue and are unsure how to resolve it then please contact Mathew Peterson. Otherwise, you create a Github issue with steps on how to reproduce your issue.
