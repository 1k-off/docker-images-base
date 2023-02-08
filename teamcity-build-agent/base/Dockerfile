FROM jetbrains/teamcity-agent
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="docker dind, awsebcli, lambda-tools, github releases"
USER root
ENV DEBIAN_FRONTEND=noninteractive
ENV DOCKER_IN_DOCKER="start"
RUN apt update && apt upgrade -y
RUN apt install -y gnupg apt-transport-https ca-certificates python3-pip sudo jq wget software-properties-common rsync
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install -y ansible
RUN dotnet tool install --global Amazon.Lambda.Tools && \
    pip3 install awscli awsebcli --upgrade
RUN curl -L "https://github.com/github-release/github-release/releases/download/$(curl --silent "https://api.github.com/repos/github-release/github-release/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')/linux-amd64-github-release.bz2" -o /tmp/linux-amd64-github-release.bz2 && \
    bzip2 -dc /tmp/linux-amd64-github-release.bz2 > /usr/local/bin/github-release  && \
    rm /tmp/linux-amd64-github-release.bz2 && \
    chmod +x /usr/local/bin/github-release
RUN rm -f /usr/local/bin/docker-compose && \
    apt install -y docker-compose-plugin
RUN echo 'buildagent     ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
USER buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
