# F2A Fox/Beacon
# (c) Michael Topple GM5AUG
# gm5aug@topple.scot

#!/bin/bash

DISPLAY=:0  #Overcomes an issue with not being able to access the soundcard on rig

echo "Speed?"
read speed # asks user to choose speed to send (coupled with Farnsworth speed)

echo "Power? Maximum of 25w"
read power # asks user to choose a power output (in watts)

echo "Number of times to run?"
read iterations


if test -f "fox"; then
    echo "file exists."    # if the file exists
else
    echo "file does not exist."    # if it doesn't
fi

xmlrpc localhost:12345 rig.set_mode FM-D   # accesses the rig through Flrig and sets mode to FM-D (to receive soundcard audio)
xmlrpc localhost:12345 rig.set_power i/$power   # sets power to user's choice

for i in $(seq 1 $iterations)

do

xmlrpc localhost:12345 rig.set_ptt i/1   # keys rig's PTT
morse -w $speed -F 13 -a < fox  # runs morse app with chosen variables
xmlrpc localhost:12345 rig.set_ptt i/0   # unkeys rig's PTT
xmlrpc localhost:12345 rig.set_mode FM   # returns rig to FM
sleep 5

done
