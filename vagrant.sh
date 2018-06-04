#!/usr/bin/env bash

function create() {
  rm host_vars .fact_caching -rf
  vagrant up --no-provision
  vagrant snapshot save init
  vagrant reload --provision
}

case $1 in
  up )
    create
    ;;
  restore )
    rm host_vars .fact_caching -rf
    vagrant snapshot restore init
    ;;
  rebuild )
    vagrant destroy -f
    create
    ;;
  down )
    vagrant destroy -f
    ;;
  * )
    echo "Usage: up|restore|rebuild|down"
esac
