with open("data/authentication.log", "r") as file:

	for line in file:

		if "FAILED" in line:
			print(line)
