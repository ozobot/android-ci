FROM node:latest AS builder
RUN npm install -g @google/gemini-cli@latest
WORKDIR /usr/src
COPY entrypoint.sh .
ENTRYPOINT ["/bin/bash", "/usr/src/entrypoint.sh"]