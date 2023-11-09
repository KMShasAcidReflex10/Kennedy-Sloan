#!/bin/bash

# Run the "ip addr" command and filter the output to extract only my IP address
# I'm using awk to look for the line that starts with "inet", then I'm printing the second field. Then I filter out "184.171.150.21"

ip_address=$(ip addr | awk '/inet / {print $2}' | grep -v "184.171.150.21")

# Print IP
echo "My IP Address is: $ip_address"
