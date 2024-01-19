FROM node:18-alpine
ENV RUNNER_TEMP "/tmp"
WORKDIR /tmp
RUN apk update && apk add --no-cache curl wget unzip
RUN curl -s https://api.github.com/repos/Azure/webapps-deploy/releases/latest \
    | grep "zipball_url" | cut -d '"' -f 4 | wget -i - -O webapp-deploy.zip && \
    unzip webapp-deploy.zip && \
    mv Azure-webapps-deploy-* /app && \
    rm -f webapp-deploy.zip
WORKDIR /app
RUN npm ci
CMD ["node", "/app/lib/main.js"]