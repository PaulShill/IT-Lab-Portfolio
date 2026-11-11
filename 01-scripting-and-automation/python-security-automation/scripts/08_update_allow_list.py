# Read the allow list
with open("data/allow_list.txt", "r") as file:
	ip_addresses = file.read()

# Convert the allow list into a Python list
ip_addresses = ip_addresses.split()

# Read the removal list
with open("data/remove_list.txt", "r") as file:
	remove_list = file.read()

# Convert the removal list into a Python list
remove_list = remove_list.split()

# Remove unwanted IP addresses
for ip in remove_list:
	if ip in ip_addresses:
		ip_addresses.remove(ip)

# Write the updated allow list back to the file
with open("data/allow_list.txt", "w") as file:
	file.write("\n".join(ip_addresses))
