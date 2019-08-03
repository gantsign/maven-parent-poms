#!/bin/bash

set -e
set +x

# See http://www.debonair.io/post/maven-cd/ for instructions
openssl aes-256-cbc \
    -K "$encrypted_06b490fdd6d5_key" \
    -iv "$encrypted_06b490fdd6d5_iv" \
    -in .travis/codesigning.asc.enc \
    -out .travis/codesigning.asc -d
gpg --fast-import .travis/codesigning.asc

./mvnw deploy \
    --settings .travis/settings.xml \
    -P attach-site-descriptor,sign-artifacts,ossrh-deploy \
    -DskipTests \
    --batch-mode \
    --show-version
