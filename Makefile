GO ?= go

PKG       := "./..."
TESTS     := ".*"
TESTFLAGS := -timeout 10s
AOUT      := playground

all: build test run

build:
	$(GO) build

test:
	$(GO) test -run $(TESTS) $(PKG) $(TESTFLAGS)

run:
	clear && echo && ./$(AOUT); echo; echo; echo

clean:
	$(GO) clean
