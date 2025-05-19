# capcut-block-updates
CapCut Update Blocker
======================

This batch script is designed to help you prevent CapCut from auto-updating
by removing the "update.exe" file and locking the "ProductInfo" file.

--------------------------
WHAT THIS SCRIPT DOES:
--------------------------

1. Deletes the update.exe file from:
   %LOCALAPPDATA%\CapCut\Apps

2. Creates a fake "ProductInfo" file if it doesn't exist.

3. Locks the "ProductInfo" file by:
   - Removing inherited permissions
   - Allowing only READ access to your user
   - Denying WRITE access to both you and SYSTEM
   - Setting the file as Read-Only

This helps stop CapCut from creating or modifying the ProductInfo file
to check and download new versions.

--------------------
HOW TO USE IT:
--------------------

1. Right-click the script (BlockCapCutUpdate.bat)
2. Choose "Run as Administrator"

That's it!

--------------------
IMPORTANT NOTES:
--------------------

- This does NOT block CapCut's internet access.
  (You can do that separately via Windows Firewall if needed.)

- If CapCut still downloads updates:
  • Make sure no background updater is running.
  • You can also check and kill CapCut background tasks in Task Manager.

- To reverse the changes and allow updates again:
  • You’ll need to manually reset file permissions on ProductInfo.

---------------------
CLEAN & SAFE USE:
---------------------

• You can run this after each CapCut launch to clean and block again.
• Works best when CapCut is fully closed while running the script.

Download Here: 
Download

🔻 [Download the Batch Script]([https://raw.githubusercontent.com/your-username/your-repo/main/BlockCapCutUpdate.bat](https://github.com/sirennfx/capcut-block-updates/blob/main/BlockCapCutUpdate.bat))

Right-click the link above > "Save link as..." to download.

Enjoy a stable CapCut version with no surprise updates.
