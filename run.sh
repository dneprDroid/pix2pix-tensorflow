#!/usr/bin/env bash

#gcloud ml-engine local train --job-dir $JOB_DIR --module-name trainer.pix2pix  --package-path ./trainer


gcloud ml-engine jobs submit training $JOB_NAME --job-dir $JOB_DIR --runtime-version 1.0 --module-name trainer.pix2pix  --package-path ./trainer --region $REGION