#!/bin/bash

export DISABLE_AUTOBREW=1

# workaround for OSX 10.9 targetting
# https://conda-forge.org/docs/maintainer/knowledge_base.html#newer-c-features-with-old-sdk
export CXXFLAGS="${CXXFLAGS} -D_LIBCPP_DISABLE_AVAILABILITY"

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}
