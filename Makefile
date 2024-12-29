.DEFAULT_GOAL := help

.PHONY: build
build:	## container build
	@docker compose build --no-cache

.PHONY: up
up:	## container start
	@docker compose up

.PHONY: down
down:	## container, network, volume, image, etc. delete
	@docker compose down

.PHONY: add-library
add-lib:	## add library
	@docker compose run --rm app poetry add {library_name}

.PHONY: remove-library
remove-lib:	## remove library
	@docker compose run --rm app poetry remove {library_name}

.PHONY: help
help:	## help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
