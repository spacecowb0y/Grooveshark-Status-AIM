#!/usr/bin/env ruby
# Diego A. Peralta <diego@bahiastudio.net> 
# http://www.bahiastudio.net/

f = File.expand_path("~/Documents/Grooveshark/currentSong.txt")

if File.exists?(f) && File.size(f) > 0
  content = File.open(f, 'r')
  text = []
  text = content.readline.split("\t")
  status = text[3]
  message = '♫ listening to '+ text[0] + ' / ' + text[2] + ' on Grooveshark'
  if status == "playing"
    script = 'set message to "' + message + "\"\n" +
             'tell application "System Events"' + "\n" +
             'if exists process "iChat" then tell application "iChat" to if status ≠ away then set the status message to message' + "\n" +
             'if exists process "Adium" then tell application "Adium" to if status type of global status ≠ away then set status message of every account to message' + "\n" +
             'end tell' + "\n"
    IO.popen("osascript", "w") { |f| f.puts(script) }
  end
end