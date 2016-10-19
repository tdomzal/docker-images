#!/bin/bash

set -eu
set -o pipefail

# image
docker build --rm -t tdomzal/dict.pl .

# generate
docker run --rm tdomzal/dict.pl > polish.dic

# cleanup
docker rmi tdomzal/dict.pl
