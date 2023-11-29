# docker-test-ldes-sync
A straightforward docker setup to allow testing / fetching items from an ldes-feed


## info
This image uses the LDES client provided by [this github repo](https://github.com/TREEcg/event-stream-client)

The docker image extends upon a straightforward nodejs system where the above is installed through 
```sh
$ npm install -g @treecg/actor-init-ldes-client@4.0.9
```

When you run the docker it actually runs the client to simply dump the found members to stdout (in turtle) by using this command internally
``` sh
actor-init-ldes-client --disableSynchronization --dereferenceMembers --requestsPerMinute 60 -mimeType text/turtle --loggingLevel error $1 
```

## build

```sh
make docker-build 
```

## usage

```sh
docker run ldes-test-sync https://marineregions.org/feed > mrg-ldes-stream-output.ttl
```

