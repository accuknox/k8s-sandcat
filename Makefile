TAG=v1.0.3
build:
	docker buildx build -t nyrahul/sandcat:${TAG} .

push:
	docker push nyrahul/sandcat:${TAG}
