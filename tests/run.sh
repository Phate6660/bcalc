#!/bin/sh

REPO_ROOT="$(dirname $(dirname $(realpath $0)))"
bats --tap "$REPO_ROOT/tests"
