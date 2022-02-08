# About this Repo

[![Build Status](https://github.com/yevgen4989/httpd/workflows/Build%20docker%20image/badge.svg)](https://github.com/yevgen4989/httpd/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/yevgen4989/httpd.svg)](https://hub.docker.com/r/yevgen4989/httpd)
[![Docker Stars](https://img.shields.io/docker/stars/yevgen4989/httpd.svg)](https://hub.docker.com/r/yevgen4989/httpd)

This repository is a fork of https://github.com/docker-library/httpd with a few changes:

* Only alpine-based images
* All images based on [alpine](https://github.com/yevgen4989/alpine) 3.13 version due to [this](https://github.com/alpinelinux/docker-alpine/issues/182) change in 3.14 that prevents us from running it on older docker versions 

## Docker Images

* All images based on Alpine Linux
* Base image: [yevgen4989/alpine](https://github.com/yevgen4989/alpine)
* [Docker Hub](https://hub.docker.com/r/yevgen4989/httpd)

Supported tags and respective `Dockerfile` links:

* `2.4.52`, `2.4`, `2`, `latest` [_(Dockerfile)_](https://github.com/yevgen4989/httpd/tree/master/2.4/alpine/Dockerfile.template)

All images built for `linux/amd64` and `linux/arm64`
