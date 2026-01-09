#!/bin/bash

# -------- VARIABLES --------
BUCKET_NAME="secure-file-platform-bucket"
ENCRYPTED_FILE="$1"

# -------- VALIDATION --------
if [ -z "$ENCRYPTED_FILE" ]; then
  echo "Usage: ./download.sh <filename.gpg>"
  exit 1
fi

# -------- DOWNLOAD FROM S3 --------
aws s3 cp "s3://$BUCKET_NAME/$ENCRYPTED_FILE" .

# -------- DECRYPT FILE --------
gpg --yes --output "${ENCRYPTED_FILE%.gpg}" --decrypt "$ENCRYPTED_FILE"

# -------- SUCCESS MESSAGE --------
echo "✅ File downloaded and decrypted successfully"

