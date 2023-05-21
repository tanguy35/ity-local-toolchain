#!/bin/bash
dockerd > /dev/null 2>&1 & 
java -jar /usr/share/jenkins/jenkins.war
