#!/bin/bash -eu

case ${OS} in
  "ubuntu" | "debian" ) source debian.bash; break;;
  "centos" | "fedora" ) source fedora.bash; break;;
  "alpine" ) source alpine.bash; break;;
esac
