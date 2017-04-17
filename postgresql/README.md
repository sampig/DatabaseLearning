Database - PostgreSQL
=====================

Author: [ZHU, Chenfeng](http://about.me/zhuchenfeng)

## Table of contents

* [Installation](#installation)
  * [PostgreSQL](#postgresql)
  * [pgAdmin](#pgadmin)
* [Server Administration](#server-administration)
  * [Starting the Database Server](#starting-the-database-server)
* [References](#references)


## Installation

### PostgreSQL

Compile and install PostgreSQL from the source:
``` shell
tar -zxvf postgresql-[VERSION].tar.gz
cd postgresql-[VERSION]/
./configure --prefix=[POSTGRESQL_LOCATION]
make
make install
```

Initialize PostgreSQL:
``` shell
bin/initdb -D [DATA_LOCATION]
```

### pgAdmin

Compile pgAdmin:
``` shell
# get source:
git clone git://git.postgresql.org/git/pgadmin4.git
# install necessary packages for system and python:
pip install -r ./requirements.txt
# compile:
cd runtime
qmake CONFIG+=release
cd ..
make
```

Run pgAdmin as a webserver with WSGI interface. Modify _httpd.conf_ and start it.
``` 
<VirtualHost *>
    ServerName pgadmin.example.com

    WSGIDaemonProcess pgadmin processes=1 threads=25
    WSGIScriptAlias / [path_of_pgAdmin4.wsgi]

    <Directory [directory_of_pgAdmin4_web]>
        WSGIProcessGroup pgadmin
        WSGIApplicationGroup %{GLOBAL}
        Order deny,allow
        Allow from all
    </Directory>
</VirtualHost>
```

Run pgAdmin as a client:
``` shell
pgAdmin4/bin/pgAdmin4
```

## Server Administration

### Starting the Database Server

Start and stop the server:
``` shell
bin/pg_ctl -D [DATA_LOCATION] -l logfile start
bin/postgres -D [DATA_LOCATION] >logfile 2>&1 &
kill -INT ‘head -1 [DATA_LOCATION]/postmaster.pid‘
```

## References

1. [PostgreSQL](https://www.postgresql.org/)
2. [pgAdmin](https://www.pgadmin.org/)

