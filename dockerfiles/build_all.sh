#!/bin/bash -ex

cd baseimage
./build.sh
cd ../jdk8
./build.sh
cd ../tomcat8
./build.sh
