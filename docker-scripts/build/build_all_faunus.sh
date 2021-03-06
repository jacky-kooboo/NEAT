#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "please run as: sudo $0"
    exit 1
fi

CURDIR=$(pwd)
BASEDIR=$(cd $(dirname $0); pwd)"/.."
dir_list=( "faunus-0.4.4" )

export IMAGE_PREFIX="htaox/"
#"amplab/"

# NOTE: the order matters but this is the right one
for i in ${dir_list[@]}; do
	echo building $i;
	cd ${BASEDIR}/$i
        cat build
        ./build
done
cd $CURDIR
