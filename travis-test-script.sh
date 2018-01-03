#!/bin/bash
rm -rf "$GOPATH/src/github.com/ConfWatch/confwatchd" &&
go get "github.com/ConfWatch/confwatchd" && 
cd "$GOPATH/src/github.com/ConfWatch/confwatchd" &&
make && 
"$GOPATH/src/github.com/ConfWatch/confwatchd/confwatchd" -config "$GOPATH/src/github.com/ConfWatch/confwatchd/dev-config.json" -seed .
