FROM alpine:3.9
LABEL maintainer="mirdrack@gmail.com"

# Update and then install python, pip, with pip install awscli and finally clean
RUN apk -v --update add python py-pip && \
    pip install awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

# Set a default directory to work and set aws as entry point
WORKDIR /usr/src/app
ENTRYPOINT ["aws"]