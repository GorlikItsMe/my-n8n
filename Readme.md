# n8n

n8n with extra libs

```bash
# Build
docker build -t my-n8n:latest .

# Run
docker run -it --rm \
 --name n8n \
 -p 5678:5678 \
 -e GENERIC_TIMEZONE="Europe/Berlin" \
 -e TZ="Europe/Berlin" \
 -e N8N_RUNNERS_ENABLED=true \
 my-n8n:latest
```

Read more:
* https://docs.n8n.io/hosting/installation/docker/
* https://github.com/n8n-io/n8n/blob/master/docker/images/n8n-custom/Dockerfile
