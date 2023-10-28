build:
	hugo --minify --environment production

init:
	git submodule update --init 

upgrade/theme:
	git submodule update --remote --merge