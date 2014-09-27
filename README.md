# WM-Stack

This is a rebar template to generate a batteries-included
webmachine-based web application or API.

## Included libraries

* [webmachine](https://github.com/basho/webmachine): HTTP resources
* [lager](https://github.com/basho/lager): Sane, configurable error-logging
* [epgsql](https://github.com/epgsql/epgsql): PostgreSQL database driver
* [poolboy](https://github.com/devinus/poolboy): Connection pooling
  for PostgreSQL
* [erlydtl](https://github.com/erlydtl/erlydtl): ErlyDTL templating
* [qdate](https://github.com/choptastic/qdate): Manipulating dates and
  times
* [eunit_formatters](https://github.com/seancribbs/eunit_formatters):
  pretty `eunit` output

Suggest additional batteries on the
[issue tracker](https://github.com/seancribs/wm-stack/issues)!

## Features

* Includes an "asset" resource on the catch-all route that serves
  files from the `priv/www` directory. Last-Modified, ETag, and all
  compression options are turned on for static files.
* With minimal changes, it is ready for Heroku, OpenShift, and other
  PaaS things. Configuration can be passed via environment variables
  or via the typical Erlang `application:get_env()` and `:set_env()`.
* It provides `make` targets for dialyzer, xref, and eunit (`test`
  target) via [tools.mk](https://github.com/basho/tools.mk).

## Origins

This is based on the structure of
[GiddyUp](https://github.com/basho/giddyup) and the default webmachine
skeleton project.
