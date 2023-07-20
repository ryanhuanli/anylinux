#!/bin/bash

PLATFORM=x86_64 POLICY=manylinux2014 COMMIT_SHA=latest ./build.sh

docker build --rm -t "ryanhuanli/anylinux-rust" -f "ryan/Dockerfile" ryan/
