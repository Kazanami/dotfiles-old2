#!/bin/bash -eu
echo "Testing Nodebrew..."
source $HOME/.bashrc

nodebrew help
if [ $? == "0" ];
  echo "Nodebrew is enable"
fi
