#!/bin/bash
set -e

curl -L https://github.com/ERDERA/semantic-artefacts/raw/main/ontologies/ORDO_en_4.6.nt.gz | gunzip -c > ORDO_en_4.6.nt
grep '^@prefix' ORDO_en_4.6.nt | tr -s ' ' | sort -u > ordo_orphanet.prefix-definitions