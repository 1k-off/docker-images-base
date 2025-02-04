FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet6.0 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN wget https://download.visualstudio.microsoft.com/download/pr/35b1b4d1-b8f4-4b5c-9ddf-e64a846ee50b/93cc198f1c48fe5c4853bd937226f570/dotnet-sdk-6.0.428-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-6.0.428-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-6.0.428-linux-x64.tar.gz
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
