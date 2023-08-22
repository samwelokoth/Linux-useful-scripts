#/zsh/sh
for i in $*
do 
file='echo $i | tr "[A-Z]" "[a-z]"'
echo  "$i > $file"
mv  $i $file
done













