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
	@echo "  help    - Show available targets"
	@echo "  commit  - Commit changes to git"

commit: ## Commit changes to git
	@read -p "Enter commit message: " msg; \
	git add .; \
	git commit -m "$$msg"; \
	git push
