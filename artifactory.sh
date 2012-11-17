#!/bin/sh
REPO_ID=vivosys-repo
REPO_URL=https://tools.vivosys.com/artifactory/ext-release-local

for x in actors compiler library reflect
do
mvn \
  -DrepositoryId=$REPO_ID -Durl=$REPO_URL \
  -Dfile=build/osgi/org.scala-lang.scala-$x.jar \
  -DgroupId=org.scala-lang \
  -DartifactId=scala-$x-osgi \
  -Dversion=2.10.0-RC2 \
  deploy:deploy-file
done
