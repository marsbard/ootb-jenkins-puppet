#!/bin/bash

TGTDIR=extmodules

cd "`dirname $0`"

#MODULES="ripienaar/concat puppetlabs-apache puppetlabs-stdlib thias-mailman"
MODULES="rtyler-jenkins puppetlabs-stdlib puppetlabs-java puppetlabs-apt darin-zypprepo"

for MODULE in $MODULES
do
    echo $MODULE
    puppet module install --force $MODULE --target-dir $TGTDIR >& /dev/null
done

