.DEFAULT_GOAL: lint
.NOTPARALLEL:
.SILENT:

@PHONY: install
install:
	npm clean-install --no-audit --no-fund --prefer-offline

@PHONY: lint
lint:
	npx markdownlint --fix *.md profile/*.md
	npx prettier --write *.md profile/*.md

@PHONY: update
update:
	npx npm-check-updates -u
	npm install --no-audit --no-fund --prefer-offline