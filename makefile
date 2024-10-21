# Makefile

install:
	@echo "installing Dependencies .."
	@poetry --version
	@poetry install

test: install
	@echo "Running unit tets.."
	@cd src/function/tests && pytest
	@cd ../../..
	@echo "Checking code quality .."
	@poetry run ruff check --fix
	@echo "Formatting code .."
	@poetry run ruff format
	@echo "Using Mypy for static type checking .."
	@poetry run mypy .


update: install
	@echo "Mise à jour des dépendances .."
	@poetry update

