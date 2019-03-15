# Docker AWS CLI Tool

Tool to run the aws cli from a docker container

## Usage
```
docker run --rm -it \
    -e "AWS_ACCESS_KEY_ID={KEY}" \
    -e "AWS_SECRET_ACCESS_KEY={SECRET}" \
    -e "AWS_DEFAULT_REGION={region}" \
    aws-cli --version
```