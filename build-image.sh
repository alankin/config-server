#!/bin/bash
echo ============================================================
echo Generate JAR
echo ============================================================
mvn clean package -DskipTests
echo ============================================================
echo BUILD and PUSH Project to Docker
echo ============================================================
docker build -t alankin/config-server:1.0.0 .
docker push alankin/config-server:1.0.0
echo ============================================================
echo End Process
echo ============================================================