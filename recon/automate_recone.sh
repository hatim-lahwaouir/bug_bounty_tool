#!/bin/bash

target=$1


subfinder -d $target -silent | \
assetfinder --subs-only $target | \
amass enum -passive -d $target | \
shuffledns -d $target -w ~/wordlist/n0kovo_subdomains_huge.txt | \
sort -u > subdomains.txt


