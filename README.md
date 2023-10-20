# spotconnect-airplay-docker

A docker image for [SpotConnect (AirPlay)](https://github.com/philippe44/SpotConnect).  
The image includes version [0.3.2](https://github.com/philippe44/SpotConnect/releases/tag/0.3.2).  

## References

This is based on [this project](https://github.com/philippe44/SpotConnect) by [philippe44](https://github.com/philippe44).  
It will let you use your AirPlay renderers as Spotify Connect devices, including those that you have created using [Shairport Sync](https://github.com/mikebrady/shairport-sync).  

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

## Caveats

We are currently enforcing use of the static variant of the binaries, because ssl libraries are not available in any supported version on the current debian stable base image.  
See [here](https://github.com/philippe44/SpotConnect/issues/23#issuecomment-1773173101) for more details.

## Changelog

DATE|DESCRIPTION
:---|:---
2023-10-20|Enforce use of static binary
2023-10-19|Bump to release [0.3.2](https://github.com/philippe44/SpotConnect/releases/tag/0.3.2)
2023-10-15|Bump to release [0.3.0](https://github.com/philippe44/SpotConnect/releases/tag/0.3.0)
2023-10-11|First version using release [0.2.6](https://github.com/philippe44/SpotConnect/releases/tag/0.2.6)
