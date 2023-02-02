touch fileNames.txt
find . -type f -name "*.txt" -exec echo {} >> fileNames.txt \;
