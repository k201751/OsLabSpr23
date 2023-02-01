
for i in {1..5};
do
test1="test0$i"
mkdir $test1
cd $test1
for j in {1..2};
do
mkdir $j
cd $j
touch test.txt
date > test.txt
cd ..
done
cd ..
done
	
