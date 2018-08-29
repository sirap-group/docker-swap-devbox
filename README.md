<h1 align="center">
  <a href="https://github.com/sirap-group"><img src="src/assets/img/brand.png"/></a>
  <br>
  −− docker-swap-devbox −−
  <br>
  <br>
</h1>

<p align="center">
  <a href="https://hub.docker.com/r/sirap/swap-devbox" target="_blank">
    <img alt="Docker Automated build" src="https://img.shields.io/docker/automated/sirap/swap-devbox.svg"/>
  </a>
  <a href="https://hub.docker.com/r/sirap/swap-devbox" target="_blank">
    <img alt="Docker Build Status" src="https://img.shields.io/docker/build/sirap/swap-devbox.svg"/>
  </a>

  <a href="https://microbadger.com/images/sirap/swap-devbox" title="Get your own image badge on microbadger.com"><img src="https://images.microbadger.com/badges/image/sirap/swap-devbox.svg"></a>

  <a href="https://microbadger.com/images/sirap/swap-devbox" title="Get your own version badge on microbadger.com"><img src="https://images.microbadger.com/badges/version/sirap/swap-devbox.svg"></a>
</p>

<h4 align="center">
  −− Docker devbox for SWAP projects −−
  <br>
  <a href="https://www.npmjs.com/package/generate-swap-project" target="_blank">
    <img alt="NPM Stats" src="https://nodei.co/npm/generate-swap-project.png?downloads=true&downloadRank=true&stars=true"/>
  </a>
</h4>

This repository contains a `Dockerfile` used for auto-build on docker hub.

The `docker-swap-devbox` image is published on Docker Hub at that URL

* https://hub.docker.com/r/sirap/swap-devbox

* [Ubuntu-Node-Git Base Image Repo](https://github.com/rbecheras/docker-ubuntu-node-git)

This image contains the following tools:

- [Ubuntu Minimal](https://blog.ubuntu.com/2018/07/09/minimal-ubuntu-released) LTS
- git tools:
    - [`Git`](https://git-scm.com)
    - [`Ungit`](https://github.com/FredrikNoren/ungit)
    - [`Lazygit`](https://github.com/jesseduffield/lazygit)
- [`NodeJS`](https://nodejs.org/en/)
- `NodeJS` development tools:
    - [`generate`](https://www.npmjs.com/package/generate)
    - [`generate-swap-project`](https://www.npmjs.com/package/generate-swap-project)
    - [`generate-swap-generator`](https://www.npmjs.com/package/generate-swap-generator)
    - [`@angular/cli`](https://cli.angular.io/)
    - [`ionic@latest`](https://beta.ionicframework.com/docs/cli/overview)

## Git Tags and Docker Tags

This image follows the same versionning rules of its base image `ubuntu-node-git`.

- Any change on the branch `master` triggers a rebuild on docker hub and updates the docker tag `latest`
- Any new pushed `1.x` git tag triggers a rebuild on docker hub and updates the docker tag as `18.04-8` and `carbon`:
    * The first parts, `18.04` and `bionic`, gives the major version of `Ubuntu LTS` used as the base image
    * The second parts, `8` and `carbon`, gives the major version of `NodeJS LTS` installed in the image


- Any the git tag `2.x.y` will be created and pushed when the next LTS of Ubuntu or Node.js will be released. And this line will be updated.


## Authorq

**Rémi Becheras**

* [github.com/rbecheras](https://github.com/rbecheras)
* [twitter/rbecheras](https://twitter.com/rbecheras)

**Julien Bonnet**

* [github.com/JulienB37](https://github.com/JulienB37)

## License

Copyright © 2018 [Groupe SIRAP](https://github.com/sirap-group)

This software is open source software under  the terms of the MIT license.

See [LICENSE](LICENSE)
