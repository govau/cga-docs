
HOST = localhost:4000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

# Install dependencies
pa11y-install:
	@echo "Installing pa11y"
	@npm install pa11y-ci@^0.2

# Run pa11y against the site
pa11y-test:
	@echo "Run pa11y test on site"
	@pa11y-ci --sitemap "http://$(HOST)/sitemap.xml" --sitemap-find "pa11y.github.io/pa11y" --sitemap-replace "$(HOST)"
