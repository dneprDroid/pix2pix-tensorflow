export BUCKET_NAME="ovechko-deep"
export JOB_NAME="pix_pix_train$(date +%Y%m%d_%H%M%S)"

echo "Job name:"
echo $JOB_NAME
export JOB_DIR=gs://$BUCKET_NAME/$JOB_NAME
export REGION=us-east1

gcloud ml-engine local train --job-dir $JOB_DIR --module-name pix2pix  --package-path ./