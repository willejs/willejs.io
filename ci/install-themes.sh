#!/bin/bash -xe

if [ ! -e $CIRCLE_BUILD_DIR/themes/hugo-theme-bleak ]; then
  git clone https://github.com/Zenithar/hugo-theme-bleak.git themes/hugo-theme-bleak
fi
