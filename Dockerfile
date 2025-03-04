FROM n8nio/n8n:latest

# Instalacja dodatkowych pakietów systemowych
RUN apt update && apt install -y yt-dlp ffmpeg

# Instalacja dodatkowych pakietów Node.js
RUN npm install -g moment axios

CMD ["n8n"]
