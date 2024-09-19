build:
	./xslate.sh hex2bin sandcat.hex
	mv sandcat.bin sandcat
	chmod +x sandcat
	docker buildx build -t nyrahul/sandcat:latest .
	rm sandcat

push:
	docker push nyrahul/sandcat:latest
