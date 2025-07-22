#!/usr/bin/env bash

podman run -d \
  --name herisson \
  -v ./authorized_keys:/home/git/.ssh/authorized_keys:ro \
  -v ./repos:/repos \
  -p 2222:22 \
  jerem-punk/herisson-mignon:0.0.9
