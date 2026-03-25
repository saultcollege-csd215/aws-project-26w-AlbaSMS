#!/bin/bash

# --- Configuration ---
<<<<<<< HEAD
<<<<<<< HEAD
LAMBDA_NAME="csd215-lambda"
=======
LAMBDA_NAME="<the name of your lambda function>"
>>>>>>> 923be67774456382ef595da79923d9fcdb5a168c
=======
LAMBDA_NAME="<the name of your lambda function>"
>>>>>>> origin/main
REGION="us-east-1"
ROOT=.
SOURCE_DIR="$ROOT/app"
BUILD_DIR="lambda_package"
ZIP_FILE="lambda_function.zip"

# -e : exit immediately on error
# -u : treat unset variables as an error
# -x : print the commands as they get executed (so they show up in GitHub Actions logs)
set -eux

# Fail early if LAMBDA_NAME is not set properly
<<<<<<< HEAD
<<<<<<< HEAD
if [[ -z "${csd215-lambda// }" || "$LAMBDA_NAME" == \<* ]]; then
    echo "[ERROR] You did not set csd215-lambda in your deployment script."
=======
if [[ -z "${LAMBDA_NAME// }" || "$LAMBDA_NAME" == \<* ]]; then
    echo "[ERROR] You did not set LAMBDA_NAME in your deployment script."
>>>>>>> 923be67774456382ef595da79923d9fcdb5a168c
=======
if [[ -z "${LAMBDA_NAME// }" || "$LAMBDA_NAME" == \<* ]]; then
    echo "[ERROR] You did not set LAMBDA_NAME in your deployment script."
>>>>>>> origin/main
    exit 1
fi

echo "--- Starting deployment for $LAMBDA_NAME ---"

echo "[1/4] Cleaning up previous builds..."
rm -rf $BUILD_DIR
rm -f $ZIP_FILE
mkdir -p $BUILD_DIR/app

echo "[2/4] Copying application files..."
cp $SOURCE_DIR/lambda_app.py $BUILD_DIR
cp $SOURCE_DIR/__init__.py $SOURCE_DIR/core.py $SOURCE_DIR/data.py $SOURCE_DIR/lambda_app.py $BUILD_DIR/app

echo "[3/4] Packaging the Lambda function..."
cd $BUILD_DIR
zip -r9 ../$ZIP_FILE ./* -x "*.git*" -x "*.DS_Store" > /dev/null
cd ..

echo "[4/4] Deploying to AWS Lambda..."

<<<<<<< HEAD
aws lambda update-function-code --function-name "$LAMBDA_NAME" --zip-file "fileb://$ZIP_FILE" --region "$REGION"
=======
# Replace these two lines with a command that updates your Lambda function code with the new $ZIP_FILE
echo "You need to update your deployment script to actually deploy the Lambda function."
exit 1

>>>>>>> origin/main

echo "--- Deployment completed for $LAMBDA_NAME ---"
