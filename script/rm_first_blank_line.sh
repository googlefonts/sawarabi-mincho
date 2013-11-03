#! /usr/bin/env bash

ROOT=`dirname ${0}`/..

STYLE=mincho
SFDIR=fonts/${STYLE}/sawarabi-${STYLE}-medium.sfdir

sed -i -e '1{/^$/d}' ${ROOT}/${SFDIR}/*.glyph

