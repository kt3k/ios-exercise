.PHONY: test clean

test:
	xctool -workspace exercise.xcworkspace -scheme exercise -sdk iphonesimulator7.0 build test

cov:
	xctool -workspace exercise.xcworkspace -scheme exercise -sdk iphonesimulator7.0 build test GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES

clean:
	xctool -workspace exercise.xcworkspace -scheme exercise -sdk iphonesimulator7.0 clean
