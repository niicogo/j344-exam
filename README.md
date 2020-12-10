## script.sh
This script will monitor access.log file of nginx for HTTP codes and will show the count per HTTP code every time the access.log is modified.

## Requirement
This script requires the ff packages to be installed:
- amazon-linux-extras install epel
- yum install inotify-tools -y

## Instruction
To run the script, execute the line below.
```
$ ./script.sh nginx-logs/access.log &
```
