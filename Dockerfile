FROM dfelski/vscode
MAINTAINER Darius Felski
LABEL Description="Docker image for Visual Studio Code with preinstalled OpenJDK 11" Version="0.1.0"

# install Zulu-OpenJDK 11
RUN wget -q https://cdn.azul.com/zulu/bin/zulu11.2.3-jdk11.0.1-linux_amd64.deb
RUN apt install -y ./zulu11.2.3-jdk11.0.1-linux_amd64.deb

# install Maven
RUN apt install -y maven
