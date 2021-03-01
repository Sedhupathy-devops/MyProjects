#!/bin/bash
#To get file and directory names and count of directories and files
a=0
if [ -e ~/filelist.txt ]
then
rm ~/filelist.txt
fi
echo >>~/filelist.txt
echo "----------------This file contains the file-detials of $(whoami)----------------">>~/filelist.txt
echo >>~/filelist.txt
echo "The Directories in $(whoami) are" >>~/filelist.txt
echo >>~/filelist.txt

for i in $(ls -l ~ | grep ^d | awk '{print$9}')
do
((a++))
echo >>file.txt
echo "        >>>>>DIRECTORY_$a--->$i">>~/filelist.txt
done
echo >>~/filelist.txt
echo "Total No. of Directories :  $(ls -l ~ | grep ^d | awk '{print$9}'| wc -l )">>~/filelist.txt
echo >>~/filelist.txt

echo>>~/filelist.txt
echo "The Files in $(whoami) are">>~/filelist.txt

a=0
for i in $(ls -l ~ | grep ^- | awk '{print$9}')
do
((a++))
echo >>~/filelist.txt
echo "        >>>>>file_$a--->$i">>~/filelist.txt
done
echo >>~/filelist.txt
echo "Total No. of files : $(ls -l ~ | grep ^- | awk '{print$9}'| wc -l )">>~/filelist.txt
