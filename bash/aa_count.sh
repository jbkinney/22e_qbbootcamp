#! /usr/bin/env bash

# aa_count.sh: Downloads a PDB file from rcsb.org, counts aa occurrences, 
# and prints a sorted list of aa. 

# Example usage:
# ./aa_count.sh 1ema

# Try with the following input:
# 1ema
# 1g7k
# 1gfl
# 1s37
# 1sl8

# Get file from internet
curl "http://files.rcsb.org/view/$1.pdb" -o tmp.pdb

# Display header and title
cat tmp.pdb | grep HEADER
cat tmp.pdb | grep TITLE

# Count amino acid occurrences
cat tmp.pdb | grep ATOM | grep -v REMARK | awk '{print $4" "$6}' | uniq | \
	cut -f 1 -d " " | sort | uniq -c | sort -nr 

# Remove tmp.pdb
rm tmp.pdb
