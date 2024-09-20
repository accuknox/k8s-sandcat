TAG=v0.1.3
build:
	docker buildx build -t nyrahul/sandcat:${TAG} .

push:
	docker push nyrahul/sandcat:${TAG}
