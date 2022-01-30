#!/bin/bash

brew install protobuf 
go get -d -u google.golang.org/grpc
go get -d -u google.golang.org/protobuf
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT:$GOPATH:$GOBIN

protoc proto/user.proto --go_out=plugins=grpc:.