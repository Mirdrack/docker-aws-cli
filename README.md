# Docker AWS CLI Tool

Docker tool to run aws cli through a container

## Specifications
Based on `alpine:3.9`
aws-cli `1.16.125`
Python `2.7.15`
Linux `4.9.125`
linuxkit botocore `1.12.115`

## How to use it
```
docker run --rm -it \
    -e "AWS_ACCESS_KEY_ID={KEY}" \
    -e "AWS_SECRET_ACCESS_KEY={SECRET}" \
    -e "AWS_DEFAULT_REGION={region}" \
    -v "$PWD":/usr/src/app \
    aws-cli s3 cp README.md s3://my-bucket/README.md
```
 * Region can be needed or not depending on the command that you run
 * Volumes can be option if you only going to need the console output