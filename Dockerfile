FROM dfelski/vscode
MAINTAINER Darius Felski
LABEL Description="Docker image for Visual Studio Code with preinstalled OpenJDK 11" Version="0.3.0"

RUN apt update \
  && apt install -y wget git unzip \
  \
  && echo "install Zulu-OpenJDK 11" \
  && wget -q https://cdn.azul.com/zulu/bin/zulu11.29.3-ca-jdk11.0.2-linux_amd64.deb \
  && apt install -y ./zulu11.29.3-ca-jdk11.0.2-linux_amd64.deb \
  \
  && echo "install Gradle" \
  && wget -q https://services.gradle.org/distributions/gradle-5.2.1-bin.zip -O /tmp/gradle.zip \
  && mkdir /opt/gradle \
  && unzip -d /opt/gradle /tmp/gradle.zip \
  && echo 'PATH=$PATH:/opt/gradle/gradle-5.2.1/bin' >> /etc/profile.d/gradle_path.sh \
  \
  && echo "install Node.js" \
  && wget -qO- https://deb.nodesource.com/setup_10.x | bash - \
  && apt install -y nodejs
