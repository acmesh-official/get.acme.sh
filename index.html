#!/usr/bin/env sh

#https://github.com/acmesh-official/get.acme.sh

_exists() {
  cmd="$1"
  if [ -z "$cmd" ] ; then
    echo "Usage: _exists cmd"
    return 1
  fi
  if type command >/dev/null 2>&1 ; then
    command -v $cmd >/dev/null 2>&1
  else
    type $cmd >/dev/null 2>&1
  fi
  ret="$?"
  return $ret
}

if [ -z "$BRANCH" ]; then
  BRANCH="master"
fi

#format "email=my@example.com"
_email="$1"

if [ "$_email" ]; then
  shift
  _email="--$(echo "$_email" | tr '=' ' ')"
fi


_url="https://raw.githubusercontent.com/acmesh-official/acme.sh/$BRANCH/acme.sh"


_get=""

if _exists curl && [ "${ACME_USE_WGET:-0}" = "0" ]; then
  _get="curl -L"
elif _exists wget ; then
  _get="wget -O -"
else
  echo "Sorry, you must have curl or wget installed first."
  echo "Please install either of them and try again."
  exit 1
fi


if ! $_get "$_url" | sh -s -- --install-online $_email "$@"; then
  echo "Install error"
  echo "中国大陆用户请参考:"
  echo "https://github.com/acmesh-official/acme.sh/wiki/Install-in-China"
fi

