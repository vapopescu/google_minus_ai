#!/bin/bash

cd $(dirname $0)/package
7z a ../package.xpi *
