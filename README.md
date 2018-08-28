# docker-swap-devbox

This repository contains a `Dockerfile` used for auto-build on docker hub.

The `docker-swap-devbox` image is published on Docker Hub at that URL

* https://hub.docker.com/r/sirap/swap-devbox

* [Ubuntu-Node-Git Base Image Repo](https://github.com/rbecheras/docker-ubuntu-node-git)

## Git Tags and Docker Tags

This image follows the same versionning rules of its base image `ubuntu-node-git`.

- Any change on the branch `master` triggers a rebuild on docker hub and updates the docker tag `latest`
- Any new pushed `1.x` git tag triggers a rebuild on docker hub and updates the docker tag as `18.04-8` and `carbon`:
    * The first parts, `18.04` and `bionic`, gives the major version of `Ubuntu LTS` used as the base image
    * The second parts, `8` and `carbon`, gives the major version of `NodeJS LTS` installed in the image


- Any the git tag `2.x.y` will be created and pushed when the next LTS of Ubuntu or Node.js will be released. And this line will be updated.

## License

[MIT License](LICENSE)
