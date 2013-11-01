build:
	sudo docker build -t sherzberg/curdserver .

shell:
	sudo docker run -i -t sherzberg/curdserver /bin/bash

daemon:
	sudo docker run -p 8000:8000 -d sherzberg/curdserver

push:
	sudo docker push sherzberg/curdserver
