FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essentials
WORKDIR /src/

COPY main.c .

RUN make build