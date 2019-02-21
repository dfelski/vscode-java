FROM dfelski/vscode
MAINTAINER Darius Felski
LABEL Description="Docker image for Visual Studio Code with preinstalled OpenJDK 11" Version="0.2.0"

# install Zulu-OpenJDK 11
RUN && apt update \
  && apt install -y wget git unzip \
  \
  && wget -q https://cdn.azul.com/zulu/bin/zulu11.29.3-ca-jdk11.0.2-linux_amd64.deb \
  && apt install -y ./zulu11.29.3-ca-jdk11.0.2-linux_amd64.deb \
  \
  && wget -q https://services.gradle.org/distributions/gradle-5.2.1-bin.zip -O /tmp/gradle.zip \
  && mkdir /opt/gradle \
  && unzip -d /opt/gradle /tmp/gradle.zip
