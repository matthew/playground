GO ?= go

PKG       := "./..."
TESTS     := ".*"
TESTFLAGS := -logtostderr -timeout 10s
AOUT      := playground

all: build run

build:
	$(GO) build

run:
	clear && echo && ./$(AOUT); echo; echo; echo

clean:
	$(GO) clean
