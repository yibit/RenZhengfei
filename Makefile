
all: usage 

usage:
	@echo "Usage:                                                   "
	@echo "                                                         "
	@echo "    make  command                                        "
	@echo "                                                         "
	@echo "The commands are:                                        "
	@echo "                                                         "
	@echo "    build       build system                             "
	@echo "    serve       run gitbook serve                        "
	@echo "    clean       clean up                                 "
	@echo "    status      run git status                           "
	@echo "                                                         "

build:
	gitbook build

install:
	yarn install && gitbook install

serve:
	gitbook serve --port 4379 --lrport 4479 --watch

status:
	git status .

.PHONY: distclean clean

clean:
	find . -name \*~ -type f |xargs -I {} rm -f {}

distclean: clean

