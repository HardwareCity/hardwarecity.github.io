.PHONY: help build init upgrade/theme

default: help

help: # Show help for each of the Makefile recipes.
	@echo ""
	@echo "██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗    ██╗ █████╗ ██████╗ ███████╗     ██████╗██╗████████╗██╗   ██╗"
	@echo "██║  ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║██╔══██╗██╔══██╗██╔════╝    ██╔════╝██║╚══██╔══╝╚██╗ ██╔╝"
	@echo "███████║███████║██████╔╝██║  ██║██║ █╗ ██║███████║██████╔╝█████╗      ██║     ██║   ██║    ╚████╔╝ "
	@echo "██╔══██║██╔══██║██╔══██╗██║  ██║██║███╗██║██╔══██║██╔══██╗██╔══╝      ██║     ██║   ██║     ╚██╔╝  "
	@echo "██║  ██║██║  ██║██║  ██║██████╔╝╚███╔███╔╝██║  ██║██║  ██║███████╗    ╚██████╗██║   ██║      ██║   "
	@echo "╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝     ╚═════╝╚═╝   ╚═╝      ╚═╝   "
	@echo ""
	@echo "                                                                           contact@hardwarecity.org"
	@echo "Usage: make [target]"
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "* \033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done
	@echo ""

build: # Build the site.
	hugo --minify --environment production

init: # Initialize the theme submodule.
	git submodule update --init

upgrade/theme: # Upgrade the theme submodule.
	git submodule update --remote --merge
