# jawanndenn
Simple portage of jawanndenn (https://github.com/hartwork/jawanndenn) in docker

The port used in the container is 8080. By default, it only runs on IPv4

# usage
* test with IPv4
```
docker run -ti -p 8080:8080 --rm ybovard/jawanndenn:latest
```
* test with IPv6
```
docker run -ti -p 8080:8080 --rm ybovard/jawanndenn:latest --host [::]
```
* to get help:
```
docker run -ti --rm ybovard/jawanndenn:latest --help
```

To keep data after a container restart, a volume or directory can be mount at /jawanndenn/dbf:
```
docker volume create jawanndenn
docker run -ti -p 8080:8080 --mount source=jawanndenn,target=/jawanndenn/dbf ybovard/jawanndenn:latest
```
