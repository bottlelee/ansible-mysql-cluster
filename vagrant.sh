#!/usr/bin/env bash

function create() {
  rm host_vars -rf
  vagrant up --provision
  # vagrant snapshot save init
  # vagrant reload --provision
}

case $1 in
  up )
    create
    ;;
  rebuild )
    vagrant destroy -f
    create
    ;;
  down )
    vagrant destroy -f
    ;;
  * )
    echo "Usage: up|rebuild|down"
esac
