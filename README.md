README
======

The shell script `build.sh` runs mojito's create and build commands. Pass an optional argument to use for the app name. The build product will be in `«appname»-bld`

use like:
    
    build.sh test50

output should be two directories:

    test50      <- output of mojito create
    test50-bld  <- output of mojito build

I've added the results of this run to the repo as well for linking and discussion.

related
-------

* http://hudson.mobile.corp.yahoo.com:9999/yhudson/view/mojito/job/IDE-Listener-Job-Daily/
* http://hudson.mobile.corp.yahoo.com:9999/yhudson/job/IDE-DP-Integration-Test/
