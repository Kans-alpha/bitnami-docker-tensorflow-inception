#!/bin/bash -e

. /opt/bitnami/base/functions
. /opt/bitnami/base/helpers

print_welcome_page

if [[ "$1" == "nami" && "$2" == "start" ]] || [[ "$1" == "tail" ]]; then
  nami_initialize tensorflow-inception
  info "Starting tensorflow-inception... "
fi

exec tini -- "$@"
