#base iamge
FROM ubuntu:latest

LABEL maintainer="yez"
LABEL version="0.1.20210806"
LABEL description="This is a custom dev \
box, loaded with tools and frameworks"

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
vim -y && \
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

ADD customizers/ /root/