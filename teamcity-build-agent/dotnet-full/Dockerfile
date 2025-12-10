FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet 8, dotnet 9 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN add-apt-repository -y ppa:dotnet/backports
RUN apt-get install -y dotnet-sdk-8.0 dotnet-sdk-9.0
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
