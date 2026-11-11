usernames = ["paul", "sarah", "john", "admin", "administrator", "guest"]

privileged_accounts = ["admin", "administrator"]

for username in usernames:
	if username in privileged_accounts:
		print(username, "is a privileged account")
	else:
		print(username, "is a standard account")