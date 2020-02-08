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

There are a few things that are different between running the provisioning against a vagrant box and running the provisioning as part of the Packer workflow. The full Packer workflow can be run with Make:

```
make drupalbox
```

If this is successful, you can dd the resulting box to your local list of Vagrant boxes:

```
vagrant box add --name=test-drupalbox drupalbox_virtualbox.box
```

To spin up a Vagrant environment using this box:

1. `cd` to the directory where you want to use the box (either an existing project, or a new, empty directory)
2. If you've run Vagrant here before, destroy the existing environment:

    ```
    vagrant destroy
    ```
2. If there's an existing `Vagrantfile`, update these lines:

    ```
    box.vm.box = "test-drupalbox"
    box.vm.box_version = "*"
    ```
3. Otherwise, create a new Vagrantfile:

    ```
    vagrant init test-drupalbox
    ```
4. Spin up the box and ssh in:

    ```
    vagrant up
    vagrant ssh
    ```
