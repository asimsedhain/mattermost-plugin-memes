# Include custom targets and environment variables here

.DEFAULT_GOAL := all

memelibrary: $(shell find server/memelibrary/assets)
	env GO111MODULE=off $(GO) get github.com/jteeuwen/go-bindata/...
	$(GOPATH)/bin/go-bindata -o server/memelibrary/assets.go -pkg memelibrary -prefix server/memelibrary/assets/ -ignore '(^|/)\..*' server/memelibrary/assets/...
