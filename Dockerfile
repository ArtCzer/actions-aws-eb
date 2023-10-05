FROM python:3

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install awsebcli==3.20.1

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
