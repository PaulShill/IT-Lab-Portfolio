# String = text

$computername = "helpdesk-pc01"

# Integer = whole number

$freestorage = 50

# Float = decimal number

$cpuusage = 85.5

# Boolean = true or false

$restartrequired = $true

# Array = collection of values

$installedapplications = @("Edge", "Office", "Teams", "Chrome")

# Check available storage

if ($freestorage -lt 10) {
	write-host "critical warning"
}
elseif ($freestorage -lt 25) {
	write-host "storage getting low"
}
else {
	write-host "storage healthy"
}

# Display applications using a for loop

for ($i = 0; $i -lt $installedapplications.length; $i++) {
	write-host "installed application: $($installedapplications[$i])"
}

# Demonstrating a while loop

$attempt = 1

while ($attempt -le 3) {
	write-host "running diagnostic check $attempt"
	$attempt++
}

# Demonstrate a DO-WHILE loop

$checkcount = 0

do {
	$checkcount++
	write-host "diagnostic check number $checkcount"
} while ($checkcount -lt 3)

# Using an else command with a boolean value

if ($restart required -eq $true) {
	write-host "restart required"
}

else {
	write-host "no restart required"
}

# Define a resuable computer status function	
# Define the workstation health report function
function Get-HealthReport {
	param(
		$computername,
		$freestorage,
		$restartrequired
	)

	# Assess storage health
	if ($freestorage -lt 10) {
		$storageStatus = "Critical"
	}
	elseif ($freestorage -lt 25) {
		$storageStatus = "Low"
	}
	else {
		$storageStatus = "Healthy"
	}

	# Assess restart requirement
	if ($restartrequired -eq $true) {
		$restartStatus = "Restart Required"
	}
	else {
	$restartStatus = "No Restart Required"
	}

	# Display health report
	Write-Host " "
	Write-Host "===== WORKSTATION HEALTH REPORT ====="
	Write-Host "Computer Name: $computername"
	Write-Host "Free Storage: $freestorage GB"
	Write-Host "Storage Status: $storageStatus"
	Write-Host "Restart Status: $restartStatus"
	Write-Host "====================================="
}


