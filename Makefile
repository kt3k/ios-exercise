.PHONY: test clean

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
	coveralls -e Pods -e exerciseTests
	rm -rf gcov

echo-obj-dir:
	@echo ` xctool -showBuildSettings | awk '/OBJECT_FILE_DIR_normal/{x=$$3}/CURRENT_ARCH/{y=$$3}END{print x"/"y}' `
