#!/bin/bash -eu
echo "Testing Nodebrew..."
source $HOME/.bashrc
which nodebrew
if [ $? == "1" ];then
  echo "Not found. Canceling..."
  exit 0
fi

nodebrew help
if [ $? == "0" ];then
  echo "Nodebrew is enable"
fi
