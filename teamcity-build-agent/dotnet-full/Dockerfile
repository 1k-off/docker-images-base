FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet core 2.1, dotnet core 3.1, dotnet 5, dotnet 6 + base"
USER root
ENV PATH="$PATH:/root/.dotnet/tools"
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-2.1 dotnet-sdk-3.1 dotnet-sdk-5.0 dotnet-sdk-6.0 powershell
RUN echo "alias powershell='pwsh'" >> .bashrc && \
    alias powershell='pwsh'
USER buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
