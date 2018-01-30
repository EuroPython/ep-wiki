#!/bin/csh

set ROOT=$cwd

# Remove PID file, since trac doesn't start if this was left over from
# a previous run
rm -f $ROOT/var/tracd.pid

# Trac 0.12.3 comes with a stupid bug: it will only start in case the
# the PID file exists (whereas older version don't start if it exists);
# and it will complain in case the PID is running
echo "65000" > $ROOT/var/tracd.pid

# Start internal tracd
$ROOT/epwiki-env/bin/tracd   \
	--port 8000 \
        --hostname=localhost \
        --basic-auth=europython,$ROOT/conf/user.auth,"EuroPython Conference" \
        --daemonize --pidfile=$ROOT/var/tracd.pid \
        $ROOT/trac/europython
