# Define the default target
.DEFAULT_GOAL := help

# Define variables
PACKAGE_MANAGER := npm

# Define targets
install: ## Install project dependencies
	@echo "Installing dependencies..."
	$(PACKAGE_MANAGER) install

start: ## Run the project
	@echo "Starting the project..."
	$(PACKAGE_MANAGER) start

help: ## Show available targets
	@echo "Available targets:"
	@echo "  install - Install project dependencies"
	@echo "  start   - Run the project"
	@echo "  push  - Commit changes to git"
	@echo "  clean   - Clean the project"
	@echo "  help    - Show available targets"

push: ## Commit changes to git
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push

clean: ## Clean the project
	@echo "Cleaning the project..."
	rm -rf node_modules
	rm -rf dist
	rm -rf build
