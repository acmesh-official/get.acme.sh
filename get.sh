#!/usr/bin/env bash


if command -v curl >/dev/null 2>&1 ; then
  curl https://raw.githubusercontent.com/Neilpang/acme.sh/master/acme.sh | INSTALLONLINE=1  bash
elif command -v wget >/dev/null 2>&1 ; then
  wget -O -  https://raw.githubusercontent.com/Neilpang/acme.sh/master/acme.sh | INSTALLONLINE=1  bash
else
  echo "Sorry, you must have curl or wget installed first."
  echo "Please install either of them and try again."
fi
