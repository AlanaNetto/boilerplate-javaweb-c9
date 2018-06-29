#!/bin/bash

cwd=$(pwd)

export CLASSPATH="$cwd/tomcat/lib/servlet-api.jar:$cwd/src:$cwd/tomcat/webapps/app/WEB-INF/classes"

javac -cp $CLASSPATH $cwd/source/*.java -d $cwd/classes
javac -cp $CLASSPATH $cwd/source/br/com/java-template/controller/*.java -d $cwd/classes

rm -v $cwd/tomcat/webapps/app/WEB-INF/web.xml
cp -v $cwd/dd/web.xml $cwd/tomcat/webapps/app/WEB-INF

rm -v -R -f $cwd/tomcat/webapps/app/WEB-INF/classes

cp -v -R $cwd/classes $cwd/tomcat/webapps/app/WEB-INF

./tomcat/bin/shutdown.sh
./tomcat/bin/startup.sh