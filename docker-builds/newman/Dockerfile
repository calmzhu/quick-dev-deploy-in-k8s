FROM ubuntu

ARG newman_version

ENV NODE_VERSION 8

RuN apt-get update
RuN apt-get install -y gnupg2 openjdk-8-jdk openssh-server
ADD https://deb.nodesource.com/setup_$NODE_VERSION.x /opt/install_node.sh
RUN bash /opt/install_node.sh && apt-get install -y nodejs

# Set environment variables
ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" NEWMAN_VERSION=$newman_version

# Install newman
RUN npm install -g newman --registry=https://registry.npm.taobao.org

