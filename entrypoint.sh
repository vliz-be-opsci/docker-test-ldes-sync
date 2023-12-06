#!/usr/bin/env bash

# this script sends operational statements to stderr, and the actual ldes output to stdout
LL="--loggingLevel ${LDES_LOGGING_LEVEL:-error}"
DR="--dereferenceMembers true" 
if [ ${LDES_NO_DEREF} ]; then
  DR="--dereferenceMembers false" 
fi
DS="--disableSynchronization true"
RM="--requestsPerMinute 60"
MT="--mimeType text/turtle"

>&2 echo "using node $(node --version)"
>&2 echo "checking feed '$1'  with flags ['${LL}', '${DR}', '${DS}', '${RM}', '${MT}'" 
actor-init-ldes-client ${DS} ${DR} ${RM} ${MT} ${LL} $1 
>&2 echo "execution ended"
