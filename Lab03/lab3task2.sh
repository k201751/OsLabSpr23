msg=$(ip address)
sub="Network Configuration of Ali's Ubuntu"

read -p "Enter email address: " email

echo "$msg" | mail -s "$sub" "$email"
