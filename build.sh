#!/bin/sh -ex

appname=${1:-hybrid}
bldname=$appname-bld
statdir=yahoo.application.$appname
mojitodir=/Users/isao/Repos/mojito/myfork

pwd
mojito version
mojito create app hybrid $appname

(   #build
    cd $appname
    pwd
    mojito build hybridapp ../$bldname -r -n name -t tag -c build:debug
) 
(   #symlink yui library, similar to crt/ide install(?)
    cd $bldname
    pwd
    ln -s $mojitodir/node_modules/yui ./yahoo.libs.yui
    #make a dummy cfg file
    mkdir yahoo.crt.lib
    touch yahoo.crt.lib/yui-cfg.js
)

#open $bldname/$statdir/index.html
