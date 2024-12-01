#!/bin/bash
set -xeo pipefail
SCRIPTDIR=$(dirname "$0")
BASEDIR="${SCRIPTDIR}/.."
pushd ${BASEDIR}
pushd src/sigstore-notary-attestor
env CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build
popd
