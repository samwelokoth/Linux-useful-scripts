#!/bin/bash

# Search for SHA-512 hashes in the data and save them to a file
grep -oE "\b([[:xdigit:]]{128})\b" creds.txt > sha512_hashes.txt
