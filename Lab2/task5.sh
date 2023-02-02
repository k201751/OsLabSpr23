rm fileNames.txt
for i in {1..5}
do
dirname1="test0$i"
cd "$dirname1"
rm fileNames.txt
for j in {1..2}
do
cd "$j"
rm fileNames.txt
cd ..
done
cd ..
done

