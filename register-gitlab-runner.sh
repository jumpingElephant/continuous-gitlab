#!/usr/bin/env bash

docker run --rm \
    --network gitlab-test_default \
    --volume gitlab-test_gitlab-runner-config:/etc/gitlab-runner gitlab/gitlab-runner:alpine-v12.3.0 register \
        --non-interactive \
        --executor "docker" \
        --docker-image alpine:3.10.2 \
        --docker-network-mode gitlab-test_default \
        --url "http://gitlab/" \
        --registration-token "sJF-8zmjLWgzMpoTtszY" \
        --description "docker" \
        --tag-list "docker,my-tag,yet-another-tag" \
        --run-untagged="true" \
        --locked="false" \
        --access-level="not_protected"
