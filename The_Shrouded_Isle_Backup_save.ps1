

# Specify the path of the file to be copied
$sourceFile = "C:\Users\UserName\AppData\LocalLow\Kitfox Games\The Shrouded Isle\SaveData\autosave-exp.tsi"

# Specify the destination folder
$destinationFolder = "C:\Users\UserName\AppData\LocalLow\Kitfox Games\The Shrouded Isle\BackupSaveData\"

if (!(Test-Path $destinationFolder)){
    New-Item -ItemType Directory -Path $destinationFolder
}

# Get the current date and time in yyyy-mm-dd format
$currentDateTime = Get-Date -Format "yyyyMMddTHHmmss"

# Form the new file name with the timestamp
$newFileName = "autosave-exp_$currentDateTime.tsi"

# Specify the full path of the destination file
$destinationFile = Join-Path -Path $destinationFolder -ChildPath $newFileName

# Specify the delay between iterations in seconds (e.g., 300 seconds for 5 minutes)
$delayInSeconds = 600

# Infinite loop
while ($true) {
    # Check if the source file exists
    if (Test-Path $sourceFile -PathType Leaf) {
        # Copy the file to the destination folder        
        Copy-Item -Path $sourceFile -Destination $destinationFile -Force
        Write-Host "File copied successfully. New file name: $newFileName"

        # Sleep for the specified delay
        Start-Sleep -Seconds $delayInSeconds

        # Get the current date and time in yyyy-mm-dd format
        $currentDateTime = Get-Date -Format "yyyyMMddTHHmmss"
        # Form the new file name with the timestamp
        $newFileName = "autosave-exp_$currentDateTime.tsi"
        # Specify the full path of the destination file
        $destinationFile = Join-Path -Path $destinationFolder -ChildPath $newFileName
    } else {
        Write-Host "Source file not found: $sourceFile"
        # Exit the loop if the source file is not found
        break
    }
}
