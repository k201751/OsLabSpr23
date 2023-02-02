touch fileNames.txt
find . -type f -name "*.txt" -exec echo {} >> fileNames.txt \;
for i in {1..5}
do
dirname1="test0$i"
cd "$dirname1"
touch fileNames.txt
find . -type f -name "*.txt" -exec echo {} >> fileNames.txt \;
for j in {1..2}
do
cd "$j"
touch fileNames.txt
find . -type f -name "*.txt" -exec echo {} >> fileNames.txt \;
cd ..
done
cd ..
done
