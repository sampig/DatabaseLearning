Database - Neo4j
================

Author: [ZHU, Chenfeng](http://about.me/zhuchenfeng)

## Table of contents

* [Installation](#installation)
  * [Community Edition](#community-edition)
  * [With Docker](#with-docker)
* [Server Administration](#server-administration)
* [User Manual](#user-manual)
  * [Cypher](#cypher)
* [References](#references)


## Installation

### Community Edition

Download the tar package from the [neo4j official website](https://neo4j.com/download/community-edition/) and run it directly.

``` shell
tar zxvf neo4j-XXX-unix.tar.gz
```

### With Docker

* 7474 for HTTP.
* 7473 for HTTPS.
* 7687 for Bolt.

Start an instance of neo4j:
``` shell
docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j/data:/data \
    --volume=$HOME/neo4j/logs:/logs \
    --volume=$HOME/neo4j/plugins:/plugins \
    --volume=$HOME/neo4j/conf:/conf \
    --env NEO4J_AUTH=neo4j/[password] \
    neo4j:[version]
```

## Server Administration

Modify _conf/neo4j.conf_ to config DB.

``` shell
bin/neo4j start
bin/neo4j stop
```

## User Manual

### Cypher

Main syntax:

* START: starting nodes in the graph
* MATCH: graph pattern to match, bound to the starting points
* WHERE: filtering criteria
* RETURN: what to return

Some examples:

``` 
// Get some data
MATCH (n) OPTIONAL MATCH (n)-[r]-() RETURN n,r LIMIT 100

// Count all nodes
MATCH (n)
RETURN count(n)

// What kind of nodes exist
// Sample some nodes, reporting on property and relationship counts per node.
MATCH (n) WHERE rand() <= 0.1
RETURN
DISTINCT labels(n),
count(*) AS SampleSize,
avg(size(keys(n))) as Avg_PropertyCount,
min(size(keys(n))) as Min_PropertyCount,
max(size(keys(n))) as Max_PropertyCount,
avg(size( (n)-[]-() ) ) as Avg_RelationshipCount,
min(size( (n)-[]-() ) ) as Min_RelationshipCount,
max(size( (n)-[]-() ) ) as Max_RelationshipCount
```


## References

1. [Neo4j](https://neo4j.com/)
2. [Docker Hub - Neo4j](https://hub.docker.com/_/neo4j/)
3. [The Neo4j Manual](https://neo4j.com/docs/)
4. [The Neo4j Manual v2.3.10](http://neo4j.com/docs/2.3.10/)

