#!/bin/bash
go get "github.com/ConfWatch/confwatchd" && 
cd "$GOPATH/src/github.com/ConfWatch/confwatchd" &&
make && 
cd -- &&
"$GOPATH/src/github.com/ConfWatch/confwatchd/confwatchd" -config "$GOPATH/src/github.com/ConfWatch/confwatchd/dev-config.json" -seed .
