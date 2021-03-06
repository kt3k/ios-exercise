.PHONY: test clean doc cov kill

test:
	xctool test

cov:
	xctool test GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES

clean:
	xctool clean

kill:
	osascript -e 'tell app "iPhone Simulator" to quit'

coveralls:
	mkdir gcov
	cp `$(MAKE) echo-obj-dir`/* gcov/
	coveralls -e Pods -e exerciseTests -x '.m' -E '.*\.h' -E '.*main\.m'
	rm -rf gcov

echo-obj-dir:
	@echo ` xctool -showBuildSettings | awk '/OBJECT_FILE_DIR_normal/{x=$$3}/CURRENT_ARCH/{y=$$3}END{print x"/"y}' `

doc:
	appledoc --project-name 'exercise' --project-company 'kt3k.org' --company-id 'org.kt3k' --output doc --index-desc README.md --create-html --no-create-docset exercise

docset:
	appledoc --project-name 'exercise' --project-company 'kt3k.org' --company-id 'org.kt3k' --output doc --index-desc README.md exercise

cov-html:
	mkdir gcov
	cp `$(MAKE) echo-obj-dir`/* gcov/
	touch .cov ; rm -rf .cov ; mkdir .cov
	gcovr -r . --html --html-details -o .cov/index.html
	rm -rf gcov
