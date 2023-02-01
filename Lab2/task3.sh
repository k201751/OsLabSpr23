touch textcopy.txt
for i in {1..5};
do 
dirname1="test0$i"
for j in {1..2};
do
cat dirname1/$j/test.txt >> textcopy.txt
done
done




