FROM jenkins/jenkins:latest

USER root

RUN apt-get update \
    # install nodejs
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y apt-utils \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential \
    && apt-get install -y inotify-tools \
    # install newman
    && npm install -g newman

USER jenkins
