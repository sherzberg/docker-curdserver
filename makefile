build:
	sudo docker build -t sherzberg/curdlingserver .

shell:
	sudo docker run -i -t sherzberg/curdlingserver /bin/bash

daemon:
	sudo docker run -p 8000:8000 -d sherzberg/curdlingserver
