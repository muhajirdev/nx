#!/usr/bin/env bash

./scripts/link.sh

rm -rf tmp
mkdir -p tmp/angular
mkdir -p tmp/nx

export SELECTED_CLI=$1  
jest --maxWorkers=1 ./build/e2e/ng-add.test.js &&
jest --maxWorkers=1 ./build/e2e/ngrx.test.js &&
jest --maxWorkers=1 ./build/e2e/node.test.js &&
jest --maxWorkers=1 ./build/e2e/print-affected.test.js &&
jest --maxWorkers=1 ./build/e2e/react.test.js &&
jest --maxWorkers=1 ./build/e2e/report.test.js &&
jest --maxWorkers=1 ./build/e2e/upgrade-module.test.js &&
jest --maxWorkers=1 ./build/e2e/web.test.js &&
jest --maxWorkers=1 ./build/e2e/storybook.test.js