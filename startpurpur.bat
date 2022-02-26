@echo off
title Purpur Server
cd purpur
java --add-modules=jdk.incubator.vector -Dlog4j.configurationFile=log4j2.xml -jar purpur.jar nogui
