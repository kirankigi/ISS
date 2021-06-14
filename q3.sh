#!/bin/bash
grep -wo "s[^a ]\w*" $1 | tr "\n" ", "
printf '\n.........\n'
grep -wo "wh\w*" $1 | tr "\n" ", "
printf '\n.........\n'
grep -wo "th\w*" $1 | tr "\n" ", "
printf '\n.........\n'
grep -wo "a[^n ]\w*\|a" $1 | tr "\n" ", "
printf '\n.........\n'
