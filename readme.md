# Docker Curd Server for Python Packages

Creates a simple docker instance to proxy and store local copies of [Curdling curds](https://github.com/clarete/curdling) (Python packages)

Ports
-----

* 8000 (default curd-server port)

Docker Pull:

```bash
$ sudo docker pull sherzberg/curdserver
$ sudo docker run -d -p 8000:8000 -d sherzberg/curdserver
```

Automation:
-----------

* `make build`
* `make daemon` runs the docker as a daemon instance

Client Usage:
-------------

On a separate machine:

```bash
$ curd install -c http://myhost:8000 Flask
```

If you want to upload the build binary:

```bash
$ curd install -c http://myhost:8000 -u PIL
```
