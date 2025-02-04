FROM 1node/teamcity-build-agent:base
LABEL maintainer="bogdan.kosarevskyi@gmail.com"
LABEL description="dotnet core 2.1, dotnet core 2.2, dotnet core 3.1, dotnet 5, dotnet 6, dotnet 7, dotnet 8, dotnet 9 + base"
USER root
WORKDIR /tmp
RUN wget https://download.visualstudio.microsoft.com/download/pr/5797d98a-8faf-472d-925c-931ac542d3c8/e48942da88f4d9d653a7b5c0790e7724/dotnet-sdk-2.1.818-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-2.1.818-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-2.1.818-linux-x64.tar.gz
RUN wget https://download.visualstudio.microsoft.com/download/pr/022d9abf-35f0-4fd5-8d1c-86056df76e89/477f1ebb70f314054129a9f51e9ec8ec/dotnet-sdk-2.2.207-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-2.2.207-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-2.2.207-linux-x64.tar.gz
RUN wget https://download.visualstudio.microsoft.com/download/pr/e89c4f00-5cbb-4810-897d-f5300165ee60/027ace0fdcfb834ae0a13469f0b1a4c8/dotnet-sdk-3.1.426-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-3.1.426-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-3.1.426-linux-x64.tar.gz
RUN wget https://download.visualstudio.microsoft.com/download/pr/904da7d0-ff02-49db-bd6b-5ea615cbdfc5/966690e36643662dcc65e3ca2423041e/dotnet-sdk-5.0.408-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-5.0.408-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-5.0.408-linux-x64.tar.gz
RUN wget https://download.visualstudio.microsoft.com/download/pr/35b1b4d1-b8f4-4b5c-9ddf-e64a846ee50b/93cc198f1c48fe5c4853bd937226f570/dotnet-sdk-6.0.428-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-6.0.428-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-6.0.428-linux-x64.tar.gz
RUN wget https://download.visualstudio.microsoft.com/download/pr/0ddc1522-2361-4394-97e9-52318bf51951/c5aef30601a86810f1f8ea89d42c26a0/dotnet-sdk-7.0.410-linux-x64.tar.gz && \
    tar xzvf dotnet-sdk-7.0.410-linux-x64.tar.gz -C /usr/share/dotnet/ && \
    rm -f dotnet-sdk-7.0.410-linux-x64.tar.gz
ENV PATH="$PATH:/root/.dotnet/tools"
RUN wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-6.0 dotnet-sdk-8.0 dotnet-sdk-9.0 powershell
RUN echo "alias powershell='pwsh'" >> .bashrc && \
    alias powershell='pwsh'
USER buildagent
WORKDIR /home/buildagent
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/run-services.sh"]
