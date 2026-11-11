username = "analyst01"
failed_attempts = 4
account_locked = False
source_ip = "192.168.1.45"
if failed_attempts >= 5:
    account_locked = True
else:
    account_locked = False

print(username)
print(failed_attempts)
print(account_locked)
print(source_ip)

print(type(username))
print(type(failed_attempts))
print(type(account_locked))
print(type(source_ip))