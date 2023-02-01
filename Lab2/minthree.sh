read -p "First Var: " n1
read -p "2nd Var: " n2
read -p "3rd Var: " n3
if [[ $n1 < $n2 && $n1 < $n3 ]]; 
then 
	echo "Minimum is: $n1" 
fi
if [[ $n2 < $n1 && $n2 < $n3 ]]; 
then 
	echo "Minimum is: $n2" 
fi
if [[ $n3 < $n1 && $n3 < $n2 ]]; 
then 
	echo "Minimum is: $n3" 
fi
