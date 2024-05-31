# Clunkpad-bash-scripts

power.sh:
- basic script to handle some power profiles on the clunkpad by changing cpu frequency
- 5 profiles: low, high, min, manual, turbo
- low: runs at max 1GHZ
- high: runs at max 3.3GHZ
- min: you set minimum frequency to run at
- manual: you set a max frequency
- turbo: force to run at a frequency you set and no lower/higher

mount.sh 
- You need to grab the partition to mount by lsblk
- two inputs m and d
- m for mounting
- d for dismounting
- run ./mount.sh <input> <partition>

timeset.sh
- run it to install neccesary time and region stuff as well as set all neccesary time and region stuff
  
