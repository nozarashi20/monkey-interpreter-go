.PHONY: help test fmt run

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

test: ## Run tests
	go test -v ./...

fmt: ## Format
	gofmt -s -l -w .

run: ## Run interpreter
	go run main.go
