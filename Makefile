T= ./node_modules/.bin/duo-test -c make
D= ./node_modules/.bin/duo

build.js: test/test.js
	@$(D) --use duo-babel --stdout $< > build.js
	#@$(D) --stdout $< > build.js

clean:
	@rm -rf components build.js

test: clean test-phantomjs

test-browser: build.js
	@$(T) browser

test-phantomjs: build.js
	@$(T) phantomjs

test-saucelabs: build.js
	@$(T) -b safari:5..7 saucelabs

.PHONY: test test-saucelabs test-phantomjs
