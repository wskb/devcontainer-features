#!/bin/bash

set -e

source dev-container-features-test-lib

check "check version" bash -c "skaffold version | grep 'v2.1.0'"

reportResults
