# The_Shrouded_Isle_Backup_Script

Game related: https://store.steampowered.com/app/501320/The_Shrouded_Isle/

After  power issues + windows weirdness, I had to reboot my machine while the game was open. Once I returned to the game I discovered that my save file was corrupted.


Setting the execution policy in PowerShell applies to the entire session or system and not to a specific folder. However, you can use a workaround to execute a script in a specific folder without changing the system-wide execution policy. You can do this by running PowerShell with the -ExecutionPolicy Bypass parameter for that specific script or session.

You can run inside the PowerShell terminal: .\The_Shrouded_Isle_Backup_save.ps1
or just right-click and execute with Power Shell

Edit the variable $delayInSeconds to work with how many seconds you wish.
Edit the variables $sourceFile and $destinationFolder to the path in your machine.
