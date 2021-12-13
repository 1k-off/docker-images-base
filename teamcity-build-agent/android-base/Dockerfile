FROM jetbrains/teamcity-agent
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="android, docker dind, nodejs 16.x, github releases"
USER root
ENV DOCKER_IN_DOCKER="start"
ENV ANDROID_HOME="/opt/android"
ENV SDK_VERSION="7583922"
RUN apt update && apt upgrade -y
RUN apt install sudo wget; \
    mkdir -p ${ANDROID_HOME}
WORKDIR ${ANDROID_HOME}
RUN wget https://dl.google.com/android/repository/commandlinetools-linux-${SDK_VERSION}_latest.zip; \
    unzip commandlinetools-linux-${SDK_VERSION}_latest.zip; \
    rm commandlinetools-linux-${SDK_VERSION}_latest.zip; \
    chown -R buildagent:buildagent /opt/android
ENV PATH ${PATH}:${ANDROID_HOME}/cmdline-tools/bin
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt install -y nodejs && npm i -g npm && \
    npm install --global yarn
RUN curl -L "https://github.com/github-release/github-release/releases/download/$(curl --silent "https://api.github.com/repos/github-release/github-release/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')/linux-amd64-github-release.bz2" -o /tmp/linux-amd64-github-release.bz2 && \
    bzip2 -dc /tmp/linux-amd64-github-release.bz2 > /usr/local/bin/github-release  && \
    rm /tmp/linux-amd64-github-release.bz2 && \
    chmod +x /usr/local/bin/github-release
RUN echo 'buildagent     ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
USER buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
