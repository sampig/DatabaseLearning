Database - CouchDB
==================

Author: [ZHU, Chenfeng](http://about.me/zhuchenfeng)

## Table of contents

* [Installation](#installation)
  * [Dependencies](#dependencies)
  * [Install](#install)
* [Server Administration](#server-administration)
* [References](#references)


## Installation

### Dependencies

Dependencies:

- Erlang OTP (>=R61B03, =<19.x)
- ICU
- OpenSSL
- Mozilla SpiderMonkey (1.8.5)
- GNU Make
- GNU Compiler Collection
- libcurl
- help2man
- Python (>=2.7) for docs
- Python Sphinx (>=1.1.3)

Install the dependencies:

``` shell
sudo apt-get --no-install-recommends -y install \
    build-essential pkg-config erlang \
    libicu-dev libmozjs185-dev libcurl4-openssl-dev
```

### Install

``` shell
./configure
make release
```

After that, CouchDB will be generated in _rel/couchdb_ directory.

## Server Administration

Start the server:

``` shell
bin/couchdb
```

Visit [http://127.0.0.1:5984/_utils/index.html](http://127.0.0.1:5984/_utils/index.html) to use the DB.

Or test with:

``` shell
curl http://127.0.0.1:5984/
curl -X GET http://127.0.0.1:5984/_all_dbs
```

## User Manual

``` shell
# Create a new database:
curl -X PUT http://127.0.0.1:5984/newdb

# Delete a database:
curl -X DELETE http://127.0.0.1:5984/newdb
```

## References

1. [Apache CouchDB](http://couchdb.apache.org/)
2. [Apache CouchDB 2.0 Documentation](http://docs.couchdb.org/en/2.0.0/index.html)

