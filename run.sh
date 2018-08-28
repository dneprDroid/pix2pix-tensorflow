#!/usr/bin/env bash

export BUCKET_NAME="ovechko-deep"
export JOB_NAME="pix_pix_train$(date +%Y%m%d_%H%M%S)"

echo "Job name:"
echo $JOB_NAME
export JOB_DIR=gs://$BUCKET_NAME/$JOB_NAME
export REGION=us-east1

#gcloud ml-engine local train --job-dir $JOB_DIR --module-name trainer.pix2pix  --package-path ./trainer


gcloud ml-engine jobs submit training $JOB_NAME --job-dir $JOB_DIR --python-version "3.5" --runtime-version 1.0 --module-name trainer.pix2pix --package-path ./trainer --region $REGION --  --mode train --which_direction BtoA --input_dir gs://$BUCKET_NAME/facades/facades/train --output_dir gs://$BUCKET_NAME/facades/facades_train