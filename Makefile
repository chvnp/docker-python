.PHONY: all provision

IMAGE = "python"

SCRIPT = "myscrypt.py"

OUTPUT = "output.txt"

define help

"build - run - clean - list"
----------------------------
build: Build an image from a Dockerfile
run: Run a command in a new container
clean: Remove $(IMAGE) image
list: List Docker images
endef
export help

all:
	@echo "$$help"

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm -v $(CURDIR)/$(SCRIPT):/$(SCRIPT) python python $(SCRIPT)

clean:
	docker rmi  $(IMAGE)

list:
	docker images
