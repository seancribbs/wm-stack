ERL ?= erl
APP := {{appid}}

DIALYZER_APPS = kernel stdlib sasl erts ssl tools os_mon runtime_tools crypto inets \
		xmerl public_key asn1 mnesia eunit syntax_tools compiler

all: compile

.PHONY: deps compile update-deps clean distclean

# If tools.mk hasn't downloaded yet, silently succeed
-include deps/tools.mk/tools.mk

compile: deps assets
	${REBAR} -r compile

deps:
	${REBAR} get-deps

update-deps:
	${REBAR} update-deps

clean:
	${REBAR} -r clean

distclean: clean
	${REBAR} delete-deps
