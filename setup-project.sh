#!/bin/sh

rm -rf env-vars
wget https://s3.eu-central-1.amazonaws.com/imm-devops/scripts/env-vars

source ./env-vars

export CI_REPOSITORY_URL=$1
export CI_COMMIT_SHA=$2

if ! [ -z $3 ]; then
	export CI_COMMIT_REF_SLUG="master"
	export CI_COMMIT_REF_NAME="master"
else
	export CI_COMMIT_REF_SLUG=$3
	export CI_COMMIT_REF_NAME=$3
fi

