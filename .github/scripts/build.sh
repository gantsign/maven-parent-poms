#!/bin/bash

set -e

./mvnw install --batch-mode --show-version -Denforce.java-version.skip
