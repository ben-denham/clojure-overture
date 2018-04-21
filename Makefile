IMAGE_NAME=clojure-overture-image
CONTAINER_NAME=clojure-overture

chown:
	sudo chown -R ${USER}:${USER} .
build: chown
	docker build -t ${IMAGE_NAME} .
start: build
	if [ -n "`docker ps -a | grep ${CONTAINER_NAME}`" ]; \
	then docker start ${CONTAINER_NAME}; \
	else docker run --name ${CONTAINER_NAME} \
		-d -v `pwd`:/src \
		-p 8888:8888 \
		-p 3000:3000 \
		-p 3449:3449 \
		-p 7002:7002 \
	${IMAGE_NAME}; \
	fi
	@echo "============================================="
	@echo "Open the notebooks at: http://localhost:8888"
	@echo "============================================="
stop:
	docker kill ${CONTAINER_NAME}
clean:
	docker rm ${CONTAINER_NAME}
bash:
	docker exec -ti ${CONTAINER_NAME} /bin/bash
