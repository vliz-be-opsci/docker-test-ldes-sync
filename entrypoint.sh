#!/usr/bin/env bash

# this script sends operational storage to stderr, and the actual ldes output to stdout
>&2 echo "using node $(node --version)"
>&2 echo "checking feed '$1'" 
actor-init-ldes-client --disableSynchronization true --dereferenceMembers true --requestsPerMinute 60 --mimeType text/turtle --loggingLevel error $1 
>&2 echo "execution ended"