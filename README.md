# spotconnect-airplay-docker

A docker image for [SpotConnect (AirPlay)](https://github.com/philippe44/SpotConnect).  
The image includes version [0.2.6](https://github.com/philippe44/SpotConnect/releases/tag/0.2.6).  

## References

This is based on [this project](https://github.com/philippe44/SpotConnect) by [philippe44](https://github.com/philippe44).  
It will let you use your AirPlay renderers as Spotify Connect devices.  

## Links

REPOSITORY|DESCRIPTION
:---|:---
Source code|[GitHub](https://github.com/GioF71/spotconnect-airplay-docker)
Docker images|[Docker Hub](https://hub.docker.com/r/giof71/spotconnect-airplay)

## Build

Simply build using the following:

```
docker build . -t giof71/spotconnect-airplay:latest
```

## Configuration

Configuration is available through a set of environment variables.  
There are currently just a few variables available to set, but more will come as soon as possible.  

VARIABLE|DESCRIPTION
:---|:---
PUID|Group used to run the application, defaults to `1000`
PGID|Group used to run the application, defaults to `1000`
PREFER_STATIC|Prefer `-static` version of the executable, defaults to `no`
VORBIS_BITRATE|Set the vorbis bitrate to `320`, `160` or `96`, defaults to `320`

## Run

Simple docker-compose file:

```
---
version: "3"

volumes:
  config:

services:
  spotconnect-airplay:
    image: giof71/spotconnect-airplay:latest
    container_name: spotconnect-airplay
    network_mode: host
    environment:
      - PUID=1000
      - PGID=1000
    volumes:
      - config:/config
    restart: unless-stopped
```

## Changelog

DATE|DESCRIPTION
:---|:---
2023-10-11|First version using release [0.2.6](https://github.com/philippe44/SpotConnect/releases/tag/0.2.6)
