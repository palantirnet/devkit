# Devkit

## How Devkit Works

The basic idea for Devkit is to have an artifact for each stage of customization with all of the provisioning in a single repository.

Keep in mind that each progression starts from beginning and does not "extend" the previous box.

## Base Box

First, we build a base box using Ubuntu. These base boxes should be very similar to [boxcutter/ubuntu](https://github.com/boxcutter/ubuntu) and are just a default install.

## Drupalbox

Once we have a working base box we can then create the specific box with the customizations for the project. Drupalbox was developed to have a normalized starting point for Drupal projects.

## Custom Project Box

If the need arises where there are project dependencies that are outside the scope of the Drupalbox then we can create a specific box for the project that will mirror Drupalbox + any additional modifications.
