all: build push

# Build the container on your local machine
build:
	docker build -t jsfakian/helloworld-go .

# Push the container to docker registry
push:
	docker push jsfakian/helloworld-go