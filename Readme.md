Installation instructions.
==========================

Open your terminal and copy and paste the next command:

`cd ~/Library/`

`git clone git@github.com:kerberoS/Grooveshark-Status-AIM.git Grooveshark`

After that you need to open the file called: "com.grooveshark.status" and edit the line #11 and replace: "kerberoS" for your Mac OS X username.

Then you need to copy the file "com.grooveshark.status" and move it to "~/Library/LaunchAgents" and then run this command:

`launchctl load ~/Library/LaunchAgents/com.grooveshark.status.plist`

Done!!

You wanna stop it?
==========================

Type:

`launchctl unload ~/Library/LaunchAgents/com.grooveshark.status.plist`