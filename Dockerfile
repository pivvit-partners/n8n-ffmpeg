# start from the official n8n image
FROM n8nio/n8n:latest

# become root to install system packages
USER root

# install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# switch back to the n8n user
USER node
