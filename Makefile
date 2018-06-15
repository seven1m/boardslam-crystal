build:
	crystal build bin/boardslam.cr -o bin/boardslam

build_release:
	crystal build --static --release bin/boardslam.cr -o bin/boardslam

test:
	crystal spec
