#!/usr/bin/env bash

echo "Unloading and killing existing vagrant launch agent" >&2
echo "This may error, and that's ok." >&2
launchctl unload ~/Library/LaunchAgents/com.rachelbrindle.concourse.vagrant.plist
killall -9 vagrant

echo "Installing new launchagent and loading." >&2
echo "This should not error." >&2

set -e
cp com.rachelbrindle.concourse.vagrant.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.rachelbrindle.concourse.vagrant.plist

echo "Installed! 🎉" >&2
