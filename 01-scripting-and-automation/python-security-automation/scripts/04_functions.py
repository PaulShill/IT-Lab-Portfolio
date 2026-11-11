import re

log_entry = "FAILED user=admin ip=198.51.100.22"

result = re.search("FAILED", log_entry)

if result:
	print("Failed login detected")
else:
	print("No failed login detected")