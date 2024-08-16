#!/bin/bash
#
#prompt user to enter ip address
read -p "enter ip address to check open ports" add


#confirm the port to check
echo "checking on $add: "



netstat -tuln | grep -E "^(tcp|udp)" | awk '{print $4}' | awk -F ":" '{print $NF}' 




#to change mode the script chmod +x <nameofthefile.sh>
#
#to run the file ./first.sh

#(#!/bin/bash: This is called a shebang line, and it specifies the shell to be used for running the script, in this case, /bin/bash.

#read -p "Enter IP address or hostname: " target: This line prompts the user to enter an IP address or hostname and stores the input in the variable target.

#echo "Open ports on $target:": This line prints a message indicating that the script is displaying open ports on the specified target (IP address or hostname).

#netstat -tuln: This command displays active network connections and listening ports. Here's what each option does:

#-t: Display TCP connections.
#-u: Display UDP connections.
#-l: Display only listening sockets (open ports).
#-n: Show numerical addresses instead of resolving hostnames.
#grep -E "^(tcp|udp)": This command filters the output of netstat to include only lines starting with either "tcp" or "udp". It effectively filters out lines related to other protocols.

#awk '{print $4}': This command extracts the fourth column from each line of input. In the output of netstat, the fourth column typically contains the local address and port.

#awk -F ":" '{print $NF}': This command sets ":" as the field separator and then prints the last field on each line. This effectively extracts only the port number from the local address and port combination.

#sort -n: This command sorts the list of port numbers numerically. This ensures that the port numbers are displayed in ascending order.

#uniq: This command removes duplicate entries from the sorted list of port numbers. This ensures that each port number is displayed only once.)
#
