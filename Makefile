.PHONY: test clean

test:
	xctool -workspace exercise.xcworkspace -scheme exercise -sdk iphonesimulator7.0 build test

clean:
	xctool -workspace exercise.xcworkspace -scheme exercise -sdk iphonesimulator7.0 clean
