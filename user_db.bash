#!/usr/bin/env bash

set -aeuo pipefail;

function main() {
  if [ -z "$1" ]; then
    usage;
  fi
  local user="$1";
  local password="$2";
  local hostname="$3";
  local db="$4";

  create_user "$user";
  create_db "$db" "$user";

  printf -v RDBMS_URI "postgres://$user:$password@$hostname/$db"
  export RDBMS_URI="$RDBMS_URI";
  declare -x RDBMS_URI="$RDBMS_URI";
  printf 'RDBMS_URI=%s\n' "$RDBMS_URI";
}

function usage() {
  printf 'Usage: %s <user> <pasword> <host> <database>', "$0";
}

function create_db() {
  local db="$1";
  local user="$2";

  if psql -lqt | cut -d \| -f 1 | grep -Fqw "$db"; then
    return 0;
  fi

  $(createdb "$db" --owner "$user");
}

function create_user() {
  local user="$1";
  if psql -t -c '\du' | grep -Fq "$user"; then
    return 0;
  fi
  echo "User: '$user' does not exist";
  $(createuser --superuser "$user");
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@";
fi
