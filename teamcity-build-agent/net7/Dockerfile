FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet7.0 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN wget https://download.visualstudio.microsoft.com/download/pr/0ddc1522-2361-4394-97e9-52318bf51951/c5aef30601a86810f1f8ea89d42c26a0/dotnet-sdk-7.0.410-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-7.0.410-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-7.0.410-linux-x64.tar.gz
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
