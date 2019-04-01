.PHONY: format lint

SHELL_SCRIPTS = $(shell find . -maxdepth 1 -type f ! -name "*.*" ! -name "Makefile")

all: format lint

format:
	shfmt -i 4 -w $(SHELL_SCRIPTS)
lint:
	shellcheck $(SHELL_SCRIPTS)
