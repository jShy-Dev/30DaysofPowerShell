# 30DaysofPowerShell

## Please note: 
This is an old project that Ive revived and tweaked to help teach my son how use Powershell for administration and automation tasks. 
I designed the content to get progressively more complex but ive stretched the content a bit to make 30 days worth of topics and practice.
We will be updating the repo as frequently as life and free time allows - a true script kiddie education.
Follow along with my son and I as we complete a 30 day PowerShell learning challenge.

## 🧭 30-Day PowerShell + Automation Curriculum
Each day includes:<br>
•	Concepts & Topics<br>
•	Hands-on Exercises<br>
________________________________________
### 🔰 Week 1: PowerShell Fundamentals
<pre>
Day 1: Introduction to PowerShell
√ Topics: What is PowerShell, Cmdlets, Console vs ISE vs VS Code
√ Exercise: Run basic cmdlets (Get-Command, Get-Help, Get-Process, Get-Service)<br>
Day 2: Cmdlets and Aliases
√ Topics: Cmdlet structure, common aliases, Get-Alias
√ Exercise: Create a cheat sheet of 20 cmdlets and their aliases<br>
Day 3: Variables and Data Types
√ Topics: $variables, strings, arrays, hash tables
√ Exercise: Create a script that stores and displays system info<br>
Day 4: Operators and Expressions
√ Topics: Comparison, logical, arithmetic operators
√ Exercise: Write a script that checks disk space and alerts if low<br>
Day 5: Conditional Logic
√ Topics: if, elseif, else, switch
√ Exercise: Script to check service status and restart if stopped<br>
Day 6: Loops
• Topics: for, foreach, while, do-while
• Exercise: Loop through a list of computers and ping them<br>
Day 7: Functions and Scope
• Topics: Defining functions, parameters, scope
• Exercise: Create a function to get user info from AD (mocked)
</pre>
________________________________________
### ⚙️ Week 2: Scripting and Automation Basics
<pre>
Day 8: Script Files and Execution Policy
• Topics: .ps1 files, execution policies, signing scripts
• Exercise: Write and run a script that logs system info to a file<br>
Day 9: Error Handling
• Topics: try, catch, finally, $ErrorActionPreference
• Exercise: Script that handles missing files gracefully<br>
Day 10: Working with Files and Folders
• Topics: Get-Item, Copy-Item, Remove-Item, Test-Path
• Exercise: Backup script for a folder with logging<br>
Day 11: Working with CSV, JSON, XML
• Topics: Import-Csv, ConvertTo-Json, Select-Xml
• Exercise: Parse a CSV of users and output a report<br>
Day 12: Scheduled Tasks
• Topics: Register-ScheduledTask, schtasks.exe
• Exercise: Automate a daily cleanup script<br>
Day 13: PowerShell Remoting
• Topics: Enter-PSSession, Invoke-Command, WinRM
• Exercise: Run a script on a remote machine (lab setup)<br>
Day 14: Review + Mini Project
• Exercise: Create a script that audits system info and emails a report<br>
</pre>
________________________________________
### 🧠 Week 3: Advanced Scripting & Modules
<pre>
Day 15: Modules and Snap-ins
• Topics: Import-Module, Get-Module, creating modules
• Exercise: Package your audit script as a module<br>
Day 16: Working with APIs
• Topics: Invoke-RestMethod, Invoke-WebRequest
• Exercise: Pull weather data from an API and display it<br>
Day 17: Active Directory Automation
• Topics: Get-ADUser, New-ADUser, Set-ADUser
• Exercise: Script to bulk create users from CSV (mocked)<br>
Day 18: Windows Event Logs
• Topics: Get-EventLog, Get-WinEvent
• Exercise: Script to monitor and alert on specific events<br>
Day 19: Registry and WMI
• Topics: Get-ItemProperty, Get-WmiObject, Get-CimInstance
• Exercise: Script to check installed software via WMI<br>
Day 20: GUI with Windows Forms
• Topics: Add-Type -AssemblyName System.Windows.Forms
• Exercise: Create a simple GUI to select and run scripts<br>
Day 21: Review + Mini Project
• Exercise: Build a GUI tool to manage services on local/remote machines<br>
</pre>
________________________________________
### 🚀 Week 4: Real-World Automation + Final Project<br>
<pre>
Day 22: Logging and Transcripts
• Topics: Start-Transcript, custom logging functions
• Exercise: Add logging to previous scripts<br>
Day 23: Security and Credentials
• Topics: Get-Credential, ConvertTo-SecureString, credential vaults
• Exercise: Securely store and use credentials in a script<br>
Day 24: Packaging and Distribution
• Topics: Script packaging, signing, documentation
• Exercise: Package your service manager GUI tool<br>
Day 25: Git and Version Control
• Topics: Git basics, GitHub, versioning scripts
• Exercise: Push your scripts to a GitHub repo<br>
Day 26: Testing and Debugging
• Topics: Set-PSBreakpoint, Write-Debug, Pester tests
• Exercise: Write tests for your module or script<br>
Day 27: User Input and Forms
• Topics: InputBox, ComboBox, ListBox
• Exercise: Enhance your GUI with user input options<br>
Day 28: Review + Final Project Planning
• Exercise: Sketch out your final project GUI and logic<br>
Day 29–30: Final Project Execution
• Project: "System Admin Dashboard"
  • GUI with tabs for:
    • System Info
    • Service Manager
    • User Management (mocked)
    • Event Log Viewer
    • Script Runner
  • Features:
    • Logging
    • Credential management
    • Remote support
    • Modular code
</pre>
### 🧩 Final Project: System Admin Dashboard
<pre>
🎯 Goal
Create a Windows Forms-based PowerShell GUI tool that allows an administrator to:
• View system information
• Manage services
• View event logs
• Run scripts
• (Optionally) manage users (mocked or real if AD is available)<br>
</pre>
________________________________________
