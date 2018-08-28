#
# SWAP Devbox Dockerfile
# A Docker image based on Ubuntu Minimal to build SWAP devboxes
#
# See https://hub.docker.com/r/sirap/swap-devbox/
#
#     docker pull sirap/swap-devbox
#
FROM rbecheras/ubuntu-node-git:18.04-8
LABEL Author="Rémi Becheras <r.becheras@sirap.fr>"

ARG username="developer"
ARG password="developer"
ARG uid="1000"

USER 0
RUN deluser node \
  && adduser \
    --disabled-password \
    --home "/home/${username}" \
    --shell /bin/bash \
    --uid "${uid}" \
    --gecos "" \
    "${username}" \
  && echo "${username}:${password}" | chpasswd


USER ${username}
WORKDIR "/home/${username}/app"
EXPOSE 3000 8448
VOLUME [ "/data" ]
CMD [ "bash" ]