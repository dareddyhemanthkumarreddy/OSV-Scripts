# ---------- SINGLE LEVEL DIRECTORY ----------
single_dir=()

single_menu() {
while true
do
echo ""
echo "Single Level Directory"
echo "1. Create File"
echo "2. Delete File"
echo "3. List Files"
echo "4. Search File"
echo "5. Exit"
read -p "Enter choice: " ch

case $ch in
1)
read -p "Enter filename: " file
found=0
for f in "${single_dir[@]}"
do
if [ "$f" == "$file" ]; then
found=1
break
fi
done
if [ $found -eq 1 ]; then
echo "File already exists!"
else
single_dir+=("$file")
echo "File created."
fi
;;
2)
read -p "Enter filename to delete: " file
for i in "${!single_dir[@]}"
do
if [ "${single_dir[i]}" == "$file" ]; then
unset single_dir[i]
echo "File deleted."
fi
done
;;
3)
echo "Files:"
echo "${single_dir[@]}"
;;
4)
read -p "Enter filename to search: " file
found=0
for f in "${single_dir[@]}"
do
if [ "$f" == "$file" ]; then
found=1
fi
done
if [ $found -eq 1 ]; then
echo "File found."
else
echo "File not found."
fi
;;
5) break ;;
esac
done
}

# ---------- TWO LEVEL DIRECTORY ----------
declare -A user_dir

two_menu() {
while true
do
echo ""
echo "Two Level Directory"
echo "1. Create File"
echo "2. Delete File"
echo "3. List Files"
echo "4. Search File"
echo "5. Exit"
read -p "Enter choice: " ch

case $ch in
1)
read -p "Enter user: " user
read -p "Enter filename: " file
user_dir[$user]="${user_dir[$user]} $file"
echo "File created for user $user."
;;
2)
read -p "Enter user: " user
read -p "Enter filename: " file
files=(${user_dir[$user]})
new_list=""
for f in "${files[@]}"
do
if [ "$f" != "$file" ]; then
new_list="$new_list $f"
fi
done
user_dir[$user]=$new_list
echo "File deleted."
;;
3)
read -p "Enter user: " user
echo "Files of $user:"
echo "${user_dir[$user]}"
;;
4)
read -p "Enter user: " user
read -p "Enter filename: " file
found=0
for f in ${user_dir[$user]}
do
if [ "$f" == "$file" ]; then
found=1
fi
done
if [ $found -eq 1 ]; then
echo "File found."
else
echo "File not found."
fi
;;
5) break ;;
esac
done
}

# ---------- MAIN MENU ----------
while true
do
echo ""
echo "File Organization Simulation"
echo "1. Single Level Directory"
echo "2. Two Level Directory"
echo "3. Exit"
read -p "Enter choice: " mainch

case $mainch in
1) single_menu ;;
2) two_menu ;;
3) exit ;;
esac
done