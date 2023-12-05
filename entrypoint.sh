#!/usr/bin/env bash

# this script sends operational storage to stderr, and the actual ldes output to stdout
LL="${LDES_LOGGING_LEVEL:-error}"
>&2 echo "using node $(node --version)"
>&2 echo "checking feed '$1' at logging Level  '${LL}'" 
actor-init-ldes-client --disableSynchronization true --dereferenceMembers true --requestsPerMinute 60 --mimeType text/turtle --loggingLevel ${LL} $1 
>&2 echo "execution ended"
