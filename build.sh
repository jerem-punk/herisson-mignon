#!/usr/bin/env bash

touch authorized_keys
mkdir -p repos

podman build -t jerem-punk/herisson-mignon:0.0.9 .
