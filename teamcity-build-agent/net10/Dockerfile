FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet10.0 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN apt-get install -y dotnet-sdk-10.0
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
