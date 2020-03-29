#!/bin/bash

FILE=./file

#touch "$FILE"

gulp() {
  echo "$1" >> "$FILE"
}

#gulp "var gulp = require('gulp');"

is_exist() {
  if [ -e "$FILE" ]; then
    return 0
  fi
  return 1
}

if is_exist; then
  echo "File exist"
else
  echo "File not exist"
fi
