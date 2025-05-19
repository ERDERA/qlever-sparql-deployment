#!/bin/bash
set -e

curl -L https://github.com/ERDERA/semantic-artefacts/raw/main/ontologies/hoom_orphanet_2.3.ttl.gz | gunzip -c > hoom_orphanet_2.3.ttl
grep '^@prefix' hoom_orphanet_2.3.ttl | tr -s ' ' | sort -u > hoom_orphanet.prefix-definitions
rm *.gz