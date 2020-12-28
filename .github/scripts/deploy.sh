#!/bin/bash

set -e
set +x

./mvnw deploy \
    --settings .github/maven/settings.xml \
    -P attach-site-descriptor,sign-artifacts,ossrh-deploy \
    -DskipTests \
    -Dinvoker.skip=true \
    --batch-mode \
    --show-version
