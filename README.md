UNMAINTAINED
============
This project is not maintained anymore.
If you want to take over contact us at tech@cargomedia.ch.

cargomedia/janus
=============
Docker image with janus-gateway server and some plugins.

Build:
```sh
docker build -t cargomedia/janus:latest .
```

Run (in test mode):
```sh
docker run -it --rm -e hostname=my-janus-server.com janus:latest
```
