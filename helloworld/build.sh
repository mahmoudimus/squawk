#!/bin/sh

mkdir -p classes output
javac -target 1.3 -source 1.2 -d classes `find src -name '*.java' -print`
../tools/linux-x86/preverify -d output -classpath ../cldc/classes.jar classes
(cd output; jar cfM ../classes.jar .)