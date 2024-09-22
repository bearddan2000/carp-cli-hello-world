#! /bin/sh

FILE="hello"

carp $FILE.carp -b 2> /dev/null

clang -o $FILE -I $CARP_DIR/core -lm out/main.c

./$FILE