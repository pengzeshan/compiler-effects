#!/usr/bin/env bash

set -xe;
perf stat -e L1-icache-load-misses,br_misp_retired.all_branches -r 10 ./base 0
perf stat -e L1-icache-load-misses,br_misp_retired.all_branches -r 10 ./pgo 0
