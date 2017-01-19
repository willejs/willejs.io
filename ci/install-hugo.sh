#!/bin/bash -ex

# I stole this script from nathany/hugo-deploy

HUGO_VERSION=0.16
HUGO_DOWNLOAD=hugo_${HUGO_VERSION}_linux-64bit.tgz

# Install Hugo if not already cached or upgrade an old version.
if [ ! -e $CIRCLE_BUILD_DIR/bin/hugo ] || ! [[ `hugo version` =~ v${HUGO_VERSION} ]]; then
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_DOWNLOAD}
  tar xvzf ${HUGO_DOWNLOAD} -C $CIRCLE_BUILD_DIR/bin/
fi
