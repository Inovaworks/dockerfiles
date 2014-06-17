# FROM phusion/baseimage
FROM ubuntu:14.04

MAINTAINER Hugo Jose Pinto "http://www.github.com/hugojpinto"

ENV DEBIAN_FRONTEND noninteractive

# make sure the package repository is up to date and update ubuntu
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade

RUN apt-get install -y software-properties-common python-software-properties curl git unzip wget man 
