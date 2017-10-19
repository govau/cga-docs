HOST = localhost:8000
NPM_BIN = ./node_modules/.bin
export PATH := $(NPM_BIN):$(PATH)

# Install pa11y dependencies
pa11y-install:
	@echo "Installing pa11y"
	@npm install pa11y-ci@^0.2
	@npm install phantomjs

# Run pa11y against the site
pa11y-test:
	@echo "Run pa11y test on site"
	@pa11y-ci --sitemap "http://$(HOST)/sitemap.xml" --sitemap-find "https://docs.cloud.gov.au/" --sitemap-replace "http://$(HOST)/"

# Install broken link checker dependencies
broken-links-install:
	@echo "Installing broken link checker"
	@npm install https://github.com/stevenvachon/broken-link-checker

# Run broken link checker against the site
broken-links-test:
	@echo "Run broken link check test on site"
	@blc http://$(HOST) -ro
