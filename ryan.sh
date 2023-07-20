#!/bin/bash

PLATFORM=x86_64 POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh

# docker build --rm -t "ryanhuanli/manylinux2010" -f "docker/Dockerfile-x86_64" docker/
# docker build --rm -t "ryanhuanli/manylinux2010-rust-python" -f "Dockerfile" .
