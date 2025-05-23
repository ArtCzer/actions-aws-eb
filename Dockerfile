FROM python:3.13

ARG command="--version"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update -y
RUN pip install packaging
RUN pip install awsebcli 
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
