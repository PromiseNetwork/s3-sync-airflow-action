FROM python:3.6-alpine

LABEL version="0.1.0"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='2.3.6'

RUN pip install --quiet --no-cache-dir awscliv2==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
