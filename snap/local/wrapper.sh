#!/bin/sh


# Run-once 
TAXSCRIPT=$SNAP_USER_DATA/example.sh
if [ ! -f $TAXSCRIPT ]; then
  cp $SNAP/example-script $TAXSCRIPT
fi

exec $TAXSCRIPT
