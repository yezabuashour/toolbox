#base iamge
FROM ubuntu:latest

LABEL maintainer="yez"
LABEL version="0.1.20210912"
LABEL description="a handy linux toolbox"

#disabling prompt
ARG DEBIAN_FRONTEND=noninteractive

#installing packages
RUN apt update && \
apt upgrade -y && \
apt install \
curl unzip less groff \
postgresql-client \
git-all \
iputils-ping \
zsh \
vim \
npm \
python3-pip -y


RUN python3 -m pip install Django