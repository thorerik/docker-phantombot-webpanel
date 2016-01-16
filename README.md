Docker-PhantomBot-WebPanel
==========================
[![ImageLayers Layers](https://img.shields.io/imagelayers/layers/thorerik/phantombot-webpanel/latest.svg?style=flat-square)](https://imagelayers.io/?images=thorerik/phantombot-webpanel:latest) [![Layer Size](https://badge.imagelayers.io/thorerik/phantombot-webpanel:latest.svg)](https://imagelayers.io/?images=thorerik/phantombot-webpanel:latest) [![Docker Stars](https://img.shields.io/docker/stars/thorerik/phantombot-webpanel.svg?style=flat-square)](https://hub.docker.com/r/thorerik/phantombot-webpanel/) [![Docker Pulls](https://img.shields.io/docker/pulls/thorerik/phantombot-webpanel.svg?style=flat-square)](https://hub.docker.com/r/thorerik/phantombot-webpanel/)

[Dockerfile][1]

[PhantomBot-WebPanel][2]

To run this docker image use

    docker run --name=phantombot-webpanel --link phantombot:phantombot -d phantombot-webpanel


The container exposes port 80

You can also optionally specify the variable ```PBWP_VERSION``` with the desired version of Phantombot Webpanel, eg.
```
-e "PB_VERSION=1.5"
```

It's recommended to use this image with [Docker-PhantomBot][3]

[1]: https://github.com/thorerik/docker-phantombot/blob/master/Dockerfile
[2]: https://github.com/PhantomBot/PhantomBot-WebPanel
[3]: https://hub.docker.com/r/thorerik/phantombot/
