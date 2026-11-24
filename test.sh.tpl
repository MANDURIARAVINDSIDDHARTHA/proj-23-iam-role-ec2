#!/bin/bash
sleep 20
{
  echo "=== PROJ23 ROLE TEST START ==="
  echo "--- identity (should be the assumed role) ---"
  aws sts get-caller-identity
  echo "--- ALLOWED: list bucket ---"
  aws s3 ls s3://${bucket}/
  echo "--- ALLOWED: read object ---"
  aws s3 cp s3://${bucket}/hello.txt -
  echo "--- DENIED: write object ---"
  echo test > /tmp/x.txt
  aws s3 cp /tmp/x.txt s3://${bucket}/x.txt 2>&1
  echo "--- DENIED: list all buckets ---"
  aws s3 ls 2>&1
  echo "=== PROJ23 ROLE TEST END ==="
} > /dev/console 2>&1
