FROM n8nio/n8n:latest

# switch to root to be able to run commands
USER root

# Install system libs
RUN apk update && apk add yt-dlp ffmpeg

# Install node.js libs
RUN npm install -g moment axios node-fetch bcrypt body-parser

# switch back to user
USER node
ENV NODE_FUNCTION_ALLOW_EXTERNAL=moment,axios,node-fetch,bcrypt,body-parser
# ENV NODE_FUNCTION_ALLOW_EXTERNAL=*
ENV NODE_FUNCTION_ALLOW_BUILTIN=crypto,fs
