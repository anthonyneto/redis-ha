Redis HA
===

Example redis configuration with HA.

```
$ chown 100:101 *.cfg
$ docker-compose up
$ docker-compose scale sentinel=3
```
