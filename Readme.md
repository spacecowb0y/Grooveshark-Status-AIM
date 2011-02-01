Installation instructions.
==========================

Run the command:

`curl https://github.com/kerberoS/Grooveshark-Status-AIM/raw/master/install.sh \-o - | sh`

That's it. It will move the files for you. You don't even need git.

How to run:
===========

Run the command:

`launchctl load ~/Library/LaunchAgents/com.grooveshark.status.plist`

Done!!

You wanna stop it?
==========================

Type:

`launchctl unload ~/Library/LaunchAgents/com.grooveshark.status.plist`