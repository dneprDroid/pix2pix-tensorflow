#!/usr/bin/env bash

gsutil mkdir gs://$BUCKET_NAME/facades && gsutil cp -R facades gs://$BUCKET_NAME/facades