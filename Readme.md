# teamcity-agent
![svg image](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGNsYXNzPSJmZWF0aGVyIiB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS13aWR0aD0iMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIj48cGF0aCBkPSJNOSAxOWMtNSAxLjUtNS0yLjUtNy0zbTE0IDZ2LTMuODdhMy4zNyAzLjM3IDAgMCAwLS45NC0yLjYxYzMuMTQtLjM1IDYuNDQtMS41NCA2LjQ0LTdBNS40NCA1LjQ0IDAgMCAwIDIwIDQuNzcgNS4wNyA1LjA3IDAgMCAwIDE5LjkxIDFTMTguNzMuNjUgMTYgMi40OGExMy4zOCAxMy4zOCAwIDAgMC03IDBDNi4yNy42NSA1LjA5IDEgNS4wOSAxQTUuMDcgNS4wNyAwIDAgMCA1IDQuNzdhNS40NCA1LjQ0IDAgMCAwLTEuNSAzLjc4YzAgNS40MiAzLjMgNi42MSA2LjQ0IDdBMy4zNyAzLjM3IDAgMCAwIDkgMTguMTNWMjIiPjwvcGF0aD48L3N2Zz4%3D) https://github.com/1k-off/docker-images-base  

# Featured tags
- `dotnet-full` - teamcity agent with pre-installed dotnet core 2.2, 3.1, dotnet 5, 6 and base features
- `net6` - teamcity agent with pre-installed dotnet 6 and base features
- `net5` - teamcity agent with pre-installed dotnet 5 and base features
- `android-base` - teamcity agent with pre-installed android sdk, nodejs 16.x, github-releases.

**Note: This repo does not publish or maintain a latest tag. Please declare a specific tag when pulling or referencing images from this repo.**
# Description

Official teamcity agent with preinstalled software.

Pull the TeamCity image from the Docker Hub Repository:

```1node/teamcity-build-agent```

and use the following command to start a container with TeamCity agent running inside

Linux container:
```bash
docker run -itd --privileged -e SERVER_URL="<url>" -v <path>:/data/teamcity_agent/conf 1node/teamcity-agent:tag
```
where is the full URL for TeamCity server, accessible by the agent. Note that "localhost" will not generally work as it will refer to the "localhost" inside the container. is the host machine directory to serve as the TeamCity agent config directory. We recommend providing this binding in order to persist the agent configuration, e.g. authorization on the server. Note that you should map a different folder for every new agent you create.

You can also provide your agent's name using -e AGENT_NAME="". If this variable is omitted, the name for the agent will be generated automatically by the server.

When you run the agent for the first time, you should authorize it via the TeamCity server UI: go to the Unauthorized Agents page in your browser. See more details. All information about agent authorization is stored in the agent's configuration folder. If you stop the container with the agent and then start a new one with the same config folder, the agent's name and authorization state will be preserved.

A TeamCity agent does not need manual upgrade: it will upgrade itself automatically on connecting to an upgraded server.
