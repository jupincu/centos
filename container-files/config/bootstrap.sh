#!/bin/bash
set -ex
if [ "$(ls /config/init/)" ]; then
  for init in /config/init/*.sh; do
    chmod +x . $init \
    && . $init
  done
fi

if [[ $@ ]]; then 
  eval $@
else 
  export PS1='[\u@\h : \w]\$ ' && \
  /bin/bash
fi

tail -f /dev/null
