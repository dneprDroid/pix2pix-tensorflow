#!/usr/bin/env bash

export BUCKET_NAME="ovechko-deep"

#gsutil mkdir gs://$BUCKET_NAME/facades
gsutil cp -R $1 gs://$BUCKET_NAME