#!/usr/bin/env bash

_exists() {
  cmd="$1"
  if [[ -z "$cmd" ]] ; then
    _err "Usage: _exists cmd"
    return 1
  fi
  if type command >/dev/null 2>&1 ; then
    command -v $cmd >/dev/null 2>&1
  else
    type $cmd >/dev/null 2>&1
  fi
  ret="$?"
  _debug2 "$cmd exists=$ret"
  return $ret
}

if _exists curl ; then
  curl https://raw.githubusercontent.com/Neilpang/acme.sh/master/acme.sh | INSTALLONLINE=1  bash
elif _exists wget ; then
  wget -O -  https://raw.githubusercontent.com/Neilpang/acme.sh/master/acme.sh | INSTALLONLINE=1  bash
else
  echo "Sorry, you must have curl or wget installed first."
  echo "Please install either of them and try again."
fi
