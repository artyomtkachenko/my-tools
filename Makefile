SHELL  := /bin/bash
.DEFAULT_GOAL := usage
RED    := \033[0;31m
GREEN  := \033[0;32m
YELLOW := \033[1;33m
NC     := \033[0m # No Color

IMAGE_NAME := artyomtkachenko/tools

usage:
	@printf "\n################ ${RED} USAGE ${NC} #####################\n\n"
	@printf "${YELLOW}make build ${GREEN}# Build docker image used to run make targets in different project${NC}\n"
	@printf "\n"
	@exit 1

release:
	docker build \
	-t $(IMAGE_NAME):latest \
	-f Dockerfile . ; \
	docker push $(IMAGE_NAME)
