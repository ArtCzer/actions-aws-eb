FROM python:3.13-slim

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y

RUN pip install awsebcli 
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
