!/bin/bash

if [ ! -f "/etc/passwd" ]; then
    echo "Error: /etc/passwd file not found!"
    exit 1
fi


users=$(grep "/bin/bash" /etc/passwd | cut -d':' -f1)


if [ -z "$users" ]; then
    echo "No users found with /bin/bash CLI."
else
    echo "Users with /bin/bash CLI:"
    echo "$users"
fi
