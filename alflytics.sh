#!/bin/bash

sudo apt-get install -qy openjdk-8-jre-headless openjdk-8-jdk-headless unzip
wget https://phoenixnap.dl.sourceforge.net/project/pentaho/Business%20Intelligence%20Server/7.1/pentaho-server-ce-7.1.0.0-12.zip

unzip -d /opt pentaho-server-ce-7.1.0.0-12.zip

JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/ /opt/pentaho-server/start-pentaho.sh
