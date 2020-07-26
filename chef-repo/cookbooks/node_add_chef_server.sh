#Author - 
#Purpose
# CHnage log

cd /etc/chef-repo

for i in $(knife node list)
	do
		knife node run_list add $i "recipe[flipkart-1030-weekend::apache]"
		if [ $? -eq 0 ];  then
			echo "Node $i is added with the specified run_list"
		else
			echo "add run_list command failed"
		fi
done
