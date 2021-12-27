# teamcity-agent
![svg image](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pjxzdmcgdmlld0JveD0iMCAwIDQwIDQwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjx0aXRsZS8+PGcgaWQ9IkRvY2tlciI+PHBhdGggZD0iTTMyLjY2LDE5LjM3QTQuMTIsNC4xMiwwLDAsMCwyOS41NywxOWE0LDQsMCwwLDAtMS42OC0yLjYzbC0uMzQtLjI2LS4yNy4zM0EzLjYzLDMuNjMsMCwwLDAsMjYuNjEsMTlhMy41OSwzLjU5LDAsMCwwLC42MSwxLjY4Yy0uMjcuMTQtLjYxLjI3LS44OC40MWE1LjY3LDUuNjcsMCwwLDEtMS44MS4yNkg3LjExTDcsMjEuNzNhNy41OCw3LjU4LDAsMCwwLC42MSwzLjgzbC4yNi40N3YuMDdjMS42MiwyLjY5LDQuNTEsMy45LDcuNjcsMy45LDYsMCwxMS0yLjYyLDEzLjM4LTguMjcsMS41NS4wNywzLjEtLjM0LDMuODQtMS44MmwuMi0uMzNabS0yMC40NCw3QTEuNDEsMS40MSwwLDAsMSwxMC44MSwyNWExLjQxLDEuNDEsMCwwLDEsMi44MiwwQTEuNDEsMS40MSwwLDAsMSwxMi4yMiwyNi4zN1pNMjAuODksMThIMTguMjd2Mi42MmgyLjYyWm0wLTMuMjlIMTguMjd2Mi42MmgyLjYyWm0wLTMuMzdIMTguMjd2Mi42M2gyLjYyWk0yNC4xMiwxOEgyMS41djIuNjJoMi42MlptLTkuNzUsMEgxMS43NXYyLjYyaDIuNjJWMThabTMuMywwSDE1djIuNjJoMi42M1ptLTYuNTMsMEg4LjUydjIuNjJoMi42MlYxOFptNi41My0zLjI5SDE1djIuNjJoMi42M1ptLTMuMywwSDExLjc1djIuNjJoMi42MlYxNC42N1oiLz48L2c+PC9zdmc+) https://hub.docker.com/r/1node/teamcity-build-agent  

# Featured tags
- `net5.0-base` - teamcity agent with pre-installed dotnet 5.0, aws lambda tools, aws cli, github releases.
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
