git add .
echo "Enter git commit message:"
read commit_message
echo "Your commit mesage is: \n $commit_message \n"
while true; do
    read -p "Are you okay with this message?" yn
    case $yn in
        [Yy]* ) break
        [Nn]* ) echo "Enter git commit message:"
				read commit_message
				echo "Your commit mesage is: \n $commit_message \n";;
        * ) echo "Please answer yes or no.";;
    esac
done
git commit -m "$commit_message"
git push