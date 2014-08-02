GO ?= go

PKG       := "./..."
TESTS     := ".*"
TESTFLAGS := -logtostderr -timeout 10s

all: build test

build:
	$(GO) build

test:
	$(GO) test -run $(TESTS) $(PKG) $(TESTFLAGS)

clean:
	$(GO) clean