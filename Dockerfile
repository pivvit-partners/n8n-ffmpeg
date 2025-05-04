# Use the official n8n image as base
FROM n8nio/n8n:latest

# Switch to root to install system packages
USER root

# Install ffmpeg via Alpine’s package manager
RUN apk add --no-cache ffmpeg

# Switch back to the n8n user
USER node
