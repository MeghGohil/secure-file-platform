#!/bin/bash

# -------- VARIABLES --------
BUCKET_NAME="secure-file-platform-bucket"
FILE="$1"
GPG_KEY_ID="D4A0FC7F31AC99ADC594DA2DFE5784B21C1B836A"

# -------- VALIDATION --------
if [ -z "$FILE" ]; then
  echo "Usage: ./upload.sh <filename>"
  exit 1
fi

if [ ! -f "$FILE" ]; then
  echo "❌ Error: File not found!"
  exit 1
fi

# -------- ENCRYPT FILE --------
gpg --yes --output "$FILE.gpg" --encrypt --recipient "$GPG_KEY_ID" "$FILE" || {
  echo "❌ GPG encryption failed. Check public key."
  exit 1
}

# -------- UPLOAD TO S3 --------
aws s3 cp "$FILE.gpg" "s3://$BUCKET_NAME/" || {
  echo "❌ Upload to S3 failed."
  exit 1
}

# -------- SUCCESS MESSAGE --------
echo "✅ File encrypted and uploaded successfully to S3"

