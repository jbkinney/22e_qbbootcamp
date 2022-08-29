# To find your present location in the file system
pwd

# To view files in the current directory
ls
ls -lah

# To view files in another directory
ls Desktop
ls ../  # View contents of parent directory
ls ./   # View contents of current directory

# Change to a directory
cd Desktop
ls 

# Change to parent directory
cd ..
pwd   
ls

# Change to root directory
cd /
pwd
ls

# Change to home directory
cd ~
pwd
ls

# Change to QB Bootcamp directory
cd ~/Desktop/22e_qbbootcamp/bash/
pwd

# Delete a directory
ls
mkdir test_dir
ls
rm -r test_dir
ls

# Create a file with text in it
echo "I'm a file." > test_1.txt
ls -lah

# Display file
cat test_1.txt

# Copy file
cp test_1.txt test_2.txt
ls

# Change file name
mv test_1.txt test_3.txt
ls

#
# Exercise: obtain list of amino acid counts in GFP
#

# Grab a file from the internet
curl "http://files.rcsb.org/view/1ema.pdb"

# oops, we have to save it to some name
curl "http://files.rcsb.org/view/1ema.pdb" -o 1ema.pdb

# Use less to view file
# G: bottom of file
# g: top of file
# [space]: page down
# q: quit
less 1ema.pdb

# View the first 10 lines of a file
head 1ema.pdb

# View the first 20 lines
head -n 20 1ema.pdb

# View the last 10 lines
tail 1ema.pdb

# Compute size of file
wc 1ema.pdb
wc -l 1ema.pdb

# Find lines that contain the word atom
grep ATOM 1ema.pdb

# Pipe
cat 1ema.pdb | grep ATOM 

# Let's use less to look at the output
cat 1ema.pdb | grep ATOM | less

# So it appears that this grabs "REMARK" lines and "ATOM" lines. Remove the remarks
cat 1ema.pdb | grep ATOM | grep -v REMARK | less

# Grab columns 4 and 6
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4,$6}' | less

# Remove repeat lines
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4,$6}' | uniq | less

# Grab first column
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4,$6}' | uniq | cut -f 1 -d " "

# Count number of occurances of each amio acid
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4,$6}' | uniq | cut -f 1 -d " " | sort | uniq -c | less

# Order amino acids according to most prevalent
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4,$6}' | uniq | cut -f 1 -d " " | sort | uniq -c | sort -nr | less

# Save amino acid list to 'aa_list.txt'
cat 1ema.pdb | grep ATOM | grep -v REMARK | awk '{print $4" "$6}' | uniq | cut -f 1 -d " " | sort | uniq -c | sort -nr > aa_list.txt

# Now let's turn this into a script! -> aa_count.sh

