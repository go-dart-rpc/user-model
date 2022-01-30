#!/bin/bash

brew install protobuf 
go get -u google.golang.org/grpc
go get -u github.com/golang/protobuf/protoc-gen-go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT:$GOPATH:$GOBIN

protoc proto/user.proto --go_out=plugins=grpc:.