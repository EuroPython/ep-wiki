#!/bin/csh

set ROOT=$cwd

# Stop tracd
kill `cat $ROOT/var/tracd.pid` >& /dev/null
