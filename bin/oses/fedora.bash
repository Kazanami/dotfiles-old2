#!/bin/bash -eu

function package(){
  yum ${1}
}

function package_test(){
  yum ${1}
  exit 0
}
