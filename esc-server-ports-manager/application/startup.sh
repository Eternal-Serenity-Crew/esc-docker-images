#!/bin/bash
rm -rf /app
mkdir -p /app

dpkg --configure -a

apt-get update && apt-get install -y git

cd /app

git clone https://github.com/Eternal-Serenity-Crew/server-ports-manager.git .

./gradlew build

cd build/libs

chmod +x server-ports-manager.jar

java -jar server-ports-manager.jar
