.PHONY: build run

build:
  docker build -t mcpe:$(cat ./VERSION) .
run:
  mkdir -p /opt/mcpe-data
  docker run -itd --restart=always --name=mcpe --net=host -v /opt/mcpe-data:/data mcpe:$(cat ./VERSION)
stop:
  docker stop mcpe
