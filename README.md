# jawanndenn
Simple portage of jawanndenn (https://github.com/hartwork/jawanndenn) in docker

The port used in the container is 8080. By default, it only runs on IPv4

# usage
* IPv4
```
docker run -ti -p 8080:8080 --rm ybovard/jawanndenn:latest
```
* IPv6
```
docker run -ti -p 8080:8080 --rm ybovard/jawanndenn:latest --host [::]
```
* to get help about the jawanndenn:
```
docker run -ti --rm ybovard/jawanndenn:latest --help
```
