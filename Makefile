IMAGE_NAME=swap-devbox
IMAGE_TAG=lastbuild
CONTAINER_NAME=$(IMAGE_NAME)

all: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

run:
	docker run -it --rm --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_TAG) bash

install:
	sudo cp devbox-ctl /usr/local/bin/devbox-ctl

upgrade:
	devbox-ctl stop
	git pull
	make install
	devbox-ctl build

.PHONY: build run install