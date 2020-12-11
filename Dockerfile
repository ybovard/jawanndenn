FROM python:alpine3.12

RUN apk add gcc g++
RUN pip install --upgrade pip;pip install python-rapidjson ; pip install jawanndenn
RUN /usr/sbin/adduser -Dh /jawanndenn -u 500 jawanndenn
RUN mkdir /jawanndenn/dbf ; chown jawanndenn /jawanndenn/dbf

USER jawanndenn

ENTRYPOINT [ "/usr/local/bin/jawanndenn", "--host", "0.0.0.0", "--port", "8080" ]
CMD ["--database-sqlite3","/jawanndenn/dbf/jawanndenn.sqlite3"]
