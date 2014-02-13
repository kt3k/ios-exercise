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
	cd gcov ; coveralls
	rm -rf gcov

echo-obj-dir:
	@echo ` xctool -showBuildSettings | awk '$$1=="OBJECT_FILE_DIR_normal"{print $$3}' `/i386
