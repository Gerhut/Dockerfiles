#!/bin/sh

set -e
cd "$(dirname "$0")"

./nginx/spec.sh
./cnpm/spec.sh
