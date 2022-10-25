# Nitrile and Eastwood Setup BASH Script
Bash script to set up Nitrile and Eastwood for Clean developement. It requires SU permissions because i am moving libz3.so.4 into the /usr/lib64 folder and  the Eastwood binaries into the /bin/ folder so that you can have Eastwood in the PATH. Only tested on Fedora and Arch Linux so far and seems to work alright, do tell me if you find any issues/missing dependencies

Requirements:
  - jq
  - curl
  - tar
  - ar
  - gcc
  - libc
