# IT Support Device Checker

# string - text
$computername = "paul-windows-laptop"

# Integer - whole number
$freestorage = 18

# float - decimal number
$cpuusage = 72.6

# boolean - true or false
$restartrequired = $true

# array - collection of values
$installedapplications = @("Chrome", "Office", "Teams", "Edge")

# check available storage
if ($freestorage -lt 10) {
	write-host "Warning: critically low disk space"
} 
elseif ($freestorage -lt 25) {
	write-host "Notice: storage getting low"
} 
else {
	write-host "storage levels are healthy"
}

# Display installed applications using a for loop

for ($i = 0; $i -lt $installedapplications.length; $i++) {
	write-host "installed application: $($installedapplications[$i])"
}

# Perform three troubleshooting checks using WHILE

$attempt = 1

while ($attempt -le 3) {
	write-host "running troubleshooting check $attempt"
	$attempt++
}

# Demonstrate a DO-WHILE loop

$checkcount = 0

do {
	$checkcount++
	write-host "diagnostic check number $checkcount"
} while ($checkcount -lt 3)

# Define a resuable computer status function	
function get-computerstatus {
	param(
		$computername,
		$storage
	)
	if ($storage -lt 10) {
		return "$computername requires disk maintenance"
	}
	else {
		return "$computername is operating normally"
	}
}

# Call the function
get-computerstatus  -computername "paul-windows-laptop" -storage 18

