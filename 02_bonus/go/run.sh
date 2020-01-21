#!/bin/sh
# CMD to try
# go fmt main.go
# go run main.go
# go build main.go
docker run --rm -v $PWD:/go golang:latest go run main.go
