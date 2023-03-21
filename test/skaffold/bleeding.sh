#!/bin/bash

set -e

source dev-container-features-test-lib

check "validate skaffold installed" bash -c "skaffold version | grep -v -E '^v[0-9]+\.[0-9]+\.[0-9]+$'"

reportResults
