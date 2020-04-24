#/bin/bash

echo "hallo"
echo "$username"
echo "$password"





while :
do

    IFS=';' read -ra folder <<< "$folders"
    for i in "${folder[@]}"; do
        
        mkdir -p /backup/$i


        if [ -f /backup/$i/.olauth ] ; then
            rm /backup/$i/.olauth
        fi

        cd /backup/$i && ols login -u $username -p $password && ols -r

        sleep 1000
    done
    
done
