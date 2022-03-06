#!/bin/bash

set -e
set +x

./mvnw deploy \
    --settings .github/maven/settings.xml \
    -P attach-site-descriptor,sign-artifacts,ossrh-deploy \
    -DskipTests \
    -Dinvoker.skip=true \
    -Denforce.java-version.skip \
    --batch-mode \
    --show-version
