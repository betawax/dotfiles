#!/usr/bin/env bash

TEXT_SHORT='Foobar'
TEXT_LONG='The quick brown fox jumps over the lazy dog.'

FGs=(30 90 31 91 32 92 33 93 34 94 35 95 36 96 37 97)
BGs=(40 100 41 101 42 102 43 103 44 104 45 105 46 106 47 107)

echo

for FG in "${FGs[@]}"; do
  for MODE in 0 1; do
    echo -e "\033[${MODE};${FG}m$TEXT_LONG\033[0m"
  done
done

echo

for FG in "${FGs[@]}"; do
  for MODE in 0 1; do
    for BG in "${BGs[@]}"; do
      echo -en "\033[${MODE};${FG};${BG}m $TEXT_SHORT \033[0m "
    done
    echo
  done
done
