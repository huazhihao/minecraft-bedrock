.PHONY: build run attach stop

build:
	docker build -t mcpe:`cat ./VERSION` .

run:
	mkdir -p ~/mcpe-data
	docker run -itd --restart=always --name=mcpe --net=host -v ~/mcpe-data:/data mcpe:`cat ./VERSION`

attach:
	docker attach mcpe

stop:
	docker stop mcpe

start:
	docker start mcpe

restart:
	docker restart mcpe