#!/usr/bin/env bash

set -xeuo pipefail

if [ ! -d files ]; then
  echo 'Cannot find files directory' >&2
  exit 1
fi

cp -R ./files/. "$HOME" || true
sudo chown -R "$(id -u)" "$HOME" || true
chmod -R 700 ~/.ssh/ || true

sudo cp -R ./files/. /root || true
sudo chown -R root:root /root || true
sudo chmod -R 700 /root/.ssh || true

mkdir -p ~/workspace/go

pushd ~
wget -O go.tar.gz https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
sudo tar -xC /opt/ -vf go.tar.gz
sudo ln -sf /opt/go/bin/go /usr/bin/go
sudo ln -sf /opt/go/bin/gofmt /usr/bin/gofmt
popd

sudo env DEBIAN_FRONTEND=noninteractive apt -q -y -f -m -o 'Dpkg::Options::=--force-confold' -o 'Dpkg::Options::=--force-confdef' install ansible apache2-utils apt-transport-https autoconf automake bash binutils busybox bzip2 caca-utils ca-certificates cgroup-tools cloc cscope ctags curl dateutils dbus diffutils dnsutils dos2unix expat findutils finger gdb gnupg gnutls-bin hostname htop iftop iotop iputils-ping iputils-tracepath lftp lm-sensors locales lrzsz lsof mailutils make minicom miscfiles moreutils mosh netcat net-tools nicstat nmap nmon openssl p7zip patchutils pciutils procps psmisc rsync screen shellcheck silversearcher-ag snmp socat software-properties-common strace sudo tcpdump tcptraceroute telnet tmux traceroute tree unar uniutils unzip usbutils util-linux util-linux-locales vim wbritish wget whois wiggle yamllint zip zlib1g
