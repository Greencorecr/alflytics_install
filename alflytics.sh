#!/bin/bash

sudo apt-get install -qy openjdk-8-jre-headless openjdk-8-jdk-headless unzip
if [ ! -f pentaho-server-ce-7.1.0.0-12.zip ];
then
  wget -q https://phoenixnap.dl.sourceforge.net/project/pentaho/Business%20Intelligence%20Server/7.1/pentaho-server-ce-7.1.0.0-12.zip
fi

unzip -d /opt pentaho-server-ce-7.1.0.0-12.zip

git clone https://github.com/fcorti/alflytics.git
cd alflytics
mkdir /opt/pentaho-server/pentaho-solutions/system/Alflytics
cp -R * /opt/pentaho-server/pentaho-solutions/system/Alflytics
rm -rf /opt/pentaho-server/pentaho-solutions/system/Alflytics/build
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/ /opt/pentaho-server/start-pentaho.sh
