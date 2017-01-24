#!/bin/bash -xe

if [ ! -e $CIRCLE_BUILD_DIR/themes/hugo-strata-theme ]; then
  git clone https://github.com/digitalcraftsman/hugo-strata-theme.git themes/hugo-strata-theme
fi
