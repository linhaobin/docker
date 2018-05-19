FROM jenkinsci/blueocean

USER root

RUN apt-get update && \
    apt-get install -y sudo && \
    rm -rf /var/lib/apt/list/*

ARG dockerGid=999

RUN echo "docker:x:${dockerGid}:jenkins" >> /etc/group

RUN sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    sudo chmod +x /usr/local/bin/docker-compose

USER jenkins