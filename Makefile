GO ?= go
BANNER = "\n\033[0;32m====================\033[0;33m $(1) \033[0;32m====================\033[0m"

PKG       := "./..."
TESTS     := ".*"
TESTFLAGS := -timeout 10s
AOUT      := $(notdir $(CURDIR))

all: clear build test run

clear:
	@clear

build:
	@echo $(call BANNER,"BUILDING")
	$(GO) build

install:
	@echo $(call BANNER,"INSTALLING")
	$(GO) install

get:
	@echo $(call BANNER,"INSTALLING DEPENDENCIES")
	$(GO) get $(PKG)

test: build
	@echo $(call BANNER,"TESTING")
	$(GO) test -run $(TESTS) $(PKG) $(TESTFLAGS)

run:
	@echo $(call BANNER,"RUNNING ./$(AOUT)")
	@./$(AOUT)
	@echo

clean:
	$(GO) clean