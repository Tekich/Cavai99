#!/bin/bash


lastchange=`ls -t |grep -v \/ |head -n 1`

case $2 in
txt)
	find . -name '*.txt' |xargs grep -FA $3 "$1\\" |grep -v "$1\\";;
*)
	find $lastchange |xargs grep -wA $2 "$1\\" /dev/null |grep -v "$1\\";;
esac

