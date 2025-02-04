FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet5.0 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN wget https://download.visualstudio.microsoft.com/download/pr/904da7d0-ff02-49db-bd6b-5ea615cbdfc5/966690e36643662dcc65e3ca2423041e/dotnet-sdk-5.0.408-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-5.0.408-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-5.0.408-linux-x64.tar.gz
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
