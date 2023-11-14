.PHONY: help build init upgrade-theme

default: help

##@ Getting Started

init: ## Initialize the theme submodule and npm dependencies.
	git submodule update --init
	npm install

run: ## Servers the site for development.
	hugo serve -D --noHTTPCache

build: ## Build the site.
	hugo --minify --environment production

##@ Updates

upgrade-theme: ## Upgrade the theme submodule.
	git submodule update --remote --merge


FORMATTING_BEGIN_YELLOW = \033[0;33m
FORMATTING_BEGIN_BLUE = \033[36m
FORMATTING_END = \033[0m

help: # Show help for each of the Makefile recipes.
	@printf -- "${FORMATTING_BEGIN_BLUE}%s${FORMATTING_END}\n" \
	"" \
	"  ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗    ██╗ █████╗ ██████╗ ███████╗" \
	"  ██║  ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║██╔══██╗██╔══██╗██╔════╝" \
	"  ███████║███████║██████╔╝██║  ██║██║ █╗ ██║███████║██████╔╝█████╗  " \
	"  ██╔══██║██╔══██║██╔══██╗██║  ██║██║███╗██║██╔══██║██╔══██╗██╔══╝  " \
	"  ██║  ██║██║  ██║██║  ██║██████╔╝╚███╔███╔╝██║  ██║██║  ██║███████╗" \
	"  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝" \
	"        .''.    *       .|                                          " \
	"  *    :_\/_:           | |       *     ██████╗██╗████████╗██╗   ██╗" \
	"   .''.: /\ :      *    |'|   *        ██╔════╝██║╚══██╔══╝╚██╗ ██╔╝" \
	"  :_\/_:'.:::.  ___    |  |      *     ██║     ██║   ██║    ╚████╔╝ " \
	"  : /\ :_::::.-'   '-. |  |     .--'|  ██║     ██║   ██║     ╚██╔╝  " \
	"   '..-'|':_.|  |    ||   '-__  |   |  ╚██████╗██║   ██║      ██║   " \
	"     |' | |.    |    ||       | |   |   ╚═════╝╚═╝   ╚═╝      ╚═╝   " \
	"  ___|  '-'     '    ""       '-'   '-                              " \
	" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ contact@hardwarecity.org" \
	""
	@awk 'BEGIN {\
	    FS = ":.*##"; \
	    printf                "Usage: ${FORMATTING_BEGIN_BLUE}OPTION${FORMATTING_END}=<value> make ${FORMATTING_BEGIN_YELLOW}<target>${FORMATTING_END}\n"\
	  } \
	  /^[a-zA-Z0-9_-]+:.*?##/ { printf "  ${FORMATTING_BEGIN_BLUE}%-34s${FORMATTING_END} %s\n", $$1, $$2 } \
	  /^.?.?##~/              { printf "   %-46s${FORMATTING_BEGIN_YELLOW}%-46s${FORMATTING_END}\n", "", substr($$1, 6) } \
	  /^##@/                  { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)