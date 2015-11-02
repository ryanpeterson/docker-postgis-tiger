# docker-postgis-tiger

PostgreSQL w/ PostGIS extensions and TIGER data load scripts
built from [ryanpeterson/docker-postgis Image](https://hub.docker.com/r/ryanpeterson/docker-postgis/tags/)

To specify which States to load TIGER data for, override TIGER_STATES
environment variable as command-delimited string.

```
# e.g.
$ docker create --env TIGER_STATES="NY,NJ" ryanpeterson/postgis-tiger
```
