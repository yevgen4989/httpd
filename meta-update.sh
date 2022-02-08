#!/bin/bash

set -e

cp 2.4/alpine/Dockerfile 2.4/alpine/Dockerfile.template

# Change basic image.
sed -i '/FROM alpine/i\ARG BASE_IMAGE_TAG\n' 2.4/alpine/Dockerfile.template
sed -i 's/FROM alpine.*/FROM yevgen4989\/alpine:${BASE_IMAGE_TAG}/' 2.4/alpine/Dockerfile.template
# Alpine 3.13 doesn't have www-data group unlike newer versions, so we have to create one manually.
sed -i '/RUN set -x \\/a\    && addgroup -g 82 -S www-data \\' 2.4/alpine/Dockerfile.template

fullVersion=$(grep -oP '(?<=^ENV HTTPD_VERSION )([0-9\.]+)' 2.4/alpine/Dockerfile.template)
minorVersion=$(echo "${fullVersion}" | grep -oE '^[0-9]+\.[0-9]+')

# Update workflows.
sed -i -E "s/(version): '${minorVersion//\./\\.}\.[0-9]+'/\1: '${fullVersion}'/" .github/workflows/workflow.yml
sed -i -E "s/(tags): ${minorVersion//\./\\.}\.[0-9]+/\1: ${fullVersion}/" .github/workflows/workflow.yml
# Update README.
sed -i -E "s/\`${minorVersion//\./\\.}\.[0-9]+\`/\`${fullVersion}\`/" README.md
