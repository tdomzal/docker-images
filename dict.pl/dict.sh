#!/bin/bash

set -eu
set -o pipefail

aspell --lang pl dump master | aspell --lang pl expand | tr ' ' '\n'