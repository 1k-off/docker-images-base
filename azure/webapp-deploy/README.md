# Azure webapp deploy
Like GitHub action, but in docker.

Official website: https://github.com/Azure/webapps-deploy

# Description

This repository contains docker container that can help with deploying to an Azure WebApp (Windows or Linux). The action supports deploying a folder, *.jar (not tested yet), *.war (not tested yet), and *.zip (not tested yet) files (except msBuild generated packages).

You can also use this container to deploy your customized image into an Azure WebApps container (not tested).

**FOR NOW VIA PUBLISH PROFILE ONLY**

For setting params you should set env variable with `INPUT_` prefix and capitalized letters. For example:
`INPUT_APP-NAME`, `INPUT_PACKAGE`, `INPUT_PUBLISH-PROFILE`, `INPUT_SLOT-NAME`.

Example run:
```bash
docker run --rm -v /artifacts/umbraco10:/app/artifact -e INPUT_APP-NAME -e INPUT_PACKAGE -e INPUT_PUBLISH-PROFILE -e INPUT_SLOT-NAME kosar/azure-webapp-deploy:latest
```