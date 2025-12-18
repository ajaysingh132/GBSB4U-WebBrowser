#!/bin/sh 
set -e 
 
# Gradle Wrapper Script - Auto-generates if missing 
SCRIPT_DIR=$(dirname "$0") 
cd "$SCRIPT_DIR" 
 
if [ ! -f "gradle/wrapper/gradle-wrapper.jar" ]; then 
    echo "Generating Gradle Wrapper..." 
    curl -s https://services.gradle.org/distributions/gradle-8.6-bin.zip -o gradle-8.6.zip 
    unzip -q gradle-8.6.zip 
    mv gradle-8.6/gradle/wrapper ./gradle/ 
    rm -rf gradle-8.6 gradle-8.6.zip 
fi 
 
chmod +x gradle/wrapper/gradle-wrapper.jar 
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@" 

