README
======

The shell script `build.sh` runs mojito's create and build commands. Pass an optional argument to use for the app name. The build product will be in `«appname»-bld`

use like:
    
    build.sh test50

output should be two directories:

    test50      <- output of mojito create
    test50-bld  <- output of mojito build

Mojito version (via git describe) used is 0.5.0-74-g21075b3

I've added the results of this run to the repo as well for linking and discussion.

notes
-----

`mojito create app hybrid` uses the template files here: http://git.io/kjzpGg

`mojito build hybridapp` essentially runs the mojito app in the cwd, and saves the output in a flattened structure intended for use as static files in a browser container without an httpd.

related
-------

failing integration tests

* http://hudson.mobile.corp.yahoo.com:9999/yhudson/job/IDE-DP-Integration-Test/
