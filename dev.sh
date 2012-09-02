#!/bin/sh

set -o errexit
set -e

# Fail fast if we're not on OS X >= 10.6.0.

if [ "$(uname -s)" != "Darwin" ]; then
  echo "Sorry, DevDNS requires Mac OS X to run." >&2
  exit 1
fi

echo "*****************************************"
echo "Installing devDNS - wildcard DNS for *.lo"
echo "*****************************************"

echo "*** Installing dnsmasq..."
if [ ! [ which "dnsmasq"] ]; then
    brew install dnsmasq

    echo "*** Configurating dnsmasq..."
    echo 'address=/.lo/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf

    echo "*** Installing dnsmasq into LaunchDaemons..."
    sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
    sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
else
    echo "dnsmasq was already found to be installed. "
    echo "You should add 'address=/.lo/127.0.0.1' to its configuration file and reload the daemon."
fi

echo "*** Registerering .lo into /etc/resolver..."
sudo mkdir -v -p /etc/resolver

sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/lo'

echo 'Running self-check to see if .lo is working'
if ping -oc 100 'wildcard.lo' > /dev/null; then
    echo "*** Everything looks good. Enjoy the ride!"
else
    echo "*** Sorrrry. Something went wrong. Don't blame me."
fi

echo 'Done. Im getting out of there.'
