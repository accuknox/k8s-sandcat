build:
	docker buildx build -t nyrahul/sandcat:latest .

push:
	docker push nyrahul/sandcat:latest
