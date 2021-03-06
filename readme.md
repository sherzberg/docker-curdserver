# Docker Curd Server for Python Packages

Creates a simple docker instance to store local cached copies of [Curdling curds](https://github.com/clarete/curdling) (Python packages)

Ports
-----

* 8000 (default curd-server port)

Docker Pull:
------------

```bash
$ sudo docker pull sherzberg/curdserver
```

Run the container and setup volume sharing to persist any cached packages:

```bash
$ sudo docker run -d -v /var/wheelhouse:/var/wheelhouse -p 8000:8000 sherzberg/curdserver
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
