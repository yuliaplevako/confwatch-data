#!/bin/bash
go get "github.com/ConfWatch/confwatchd" && 
cd "$GOPATH/src/github.com/ConfWatch/confwatchd" &&
make && 
./confwatchd -config dev-config.json -seed "$GOPATH/src/github.com/ConfWatch/confwatch-data/"
