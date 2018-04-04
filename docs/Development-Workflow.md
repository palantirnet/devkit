# Development Tips

A test `Vagrantfile` is provided to run the current provisioning without building the full packer box. `cd` into the `dev/` directory, then try:

```
# Bring the box up for the first time
vagrant up

# After updating the Ansible playbook or roles
vagrant reload --provision

# After updating the spec files in drupalbox/tests/
vagrant reload --provision-with test

# Rebuild the box from scratch
vagrant destroy
vagrant up
```