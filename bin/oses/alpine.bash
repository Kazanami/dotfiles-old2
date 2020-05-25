#!/bin/bash -eu
function package() {
  apk ${1}
}

function package_test() {
  apk ${1}
  exit 0
}
