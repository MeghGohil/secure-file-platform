#!/bin/bash
set -e

echo "======================================"
echo " Secure File Platform Container Started"
echo "======================================"

# Check AWS credentials
if [[ -z "$AWS_ACCESS_KEY_ID" || -z "$AWS_SECRET_ACCESS_KEY" || -z "$AWS_DEFAULT_REGION" ]]; then
  echo "❌ AWS credentials not set."
  echo "Please pass AWS credentials as environment variables."
  exit 1
fi

# Verify tools
echo "✔ Verifying tools..."
gpg --version > /dev/null
aws --version > /dev/null

echo "✔ All required tools are available."

# Open interactive shell
exec /bin/bash

