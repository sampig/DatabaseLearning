Database - MySQL
================

Author: [ZHU, Chenfeng](http://about.me/zhuchenfeng)

## Table of contents

* [Installation](#installation)
  * [MySQL Server](#mysql-server)
  * [Workbench](#workbench)
* [Server Administration](#server-administration)
  * [Starting the Database Server](#starting-the-database-server)
  * [Backup and Recovery](#backup-and-recovery)
* [References](#references)


## Installation

### MySQL Server

Download the binaries:
``` shell
tar zxvf /path/to/mysql-VERSION-OS.tar.gz
cd mysql-VERSION-OS
```

Download the source and compile:
``` shell
tar zxvf mysql-VERSION.tar.gz
cd mysql-VERSION
mkdir bld
cd bld
cmake ..
make
make install [DESTDIR="/opt/mysql"]
```

Initialize PostgreSQL:
``` shell
scripts/mysql_install_db --basedir=path --datadir=path --user=mysql
bin/mysql_install_db --user=mysql    # MySQL 5.7.5
bin/mysqld --initialize --user=mysql # MySQL 5.7.6 and up
bin/mysql_ssl_rsa_setup              # MySQL 5.7.6 and up

bin/mysqladmin -u root password 'new-password'
```

### Workbench

MySQL Workbench is a graphical tool for working with MySQL servers and databases. MySQL Workbench fully supports MySQL server versions 5.5 and higher. It is also compatible with older MySQL server 5.x versions, except in certain situations (like displaying the process list) due to changed system tables. It does not support MySQL server versions 4.x.

* Linux distributions repository packages.
* Download official MySQL packages. [http://dev.mysql.com/downloads/workbench](http://dev.mysql.com/downloads/workbench)
* Download the source code and compile. [http://dev.mysql.com/downloads/workbench](http://dev.mysql.com/downloads/workbench)


## Server Administration

### Starting the Database Server

Start and stop the server:
``` shell
bin/mysqld_safe --defaults-file=file_name --datadir=dir_name --log-error=file_name --pid-file=file_name&
```

### Backup and Recovery

Backup/Dumping the database into SQL file:
``` shell
mysqldump --all-databases > dump.sql
mysqldump --databases db1 db2 db3 > dump.sql
```

Recover the data from SQL file.
``` shell
mysql < dump.sql
```

## References

1. [MySQL](https://www.mysql.com/)
2. [MySQL 5.7 Reference Manual](https://dev.mysql.com/doc/refman/5.7/en/)
3. [MySQL Workbench Manual](https://dev.mysql.com/doc/workbench/en/)

