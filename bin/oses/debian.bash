#!/bin/bash -eu
function package(){
  apt ${1}
}

function package_test(){
  apt ${1}
  exit 0
}
