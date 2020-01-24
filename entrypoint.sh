#!/bin/bash

# The execution of this script stops if a command or pipeline has an error.
# For example, failure to install a dependent package will cause the script
# to stop execution.


wget https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz
mkdir sfdx-cli
tar xJf sfdx-linux-amd64.tar.xz -C sfdx-cli --strip-components 1
./sfdx-cli/install

set -e

# Specify the user name of the subscriber org.
USER_NAME=$1

# Specify a package version id (starts with 04t)
# If you know the package alias but not the id, use force:package:version:list to find it.
PACKAGE=$2

