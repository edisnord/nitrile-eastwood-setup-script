# Nitrile and Eastwood Setup BASH Script
Bash script to set up Nitrile and Eastwood for Clean developement. It requires SU permissions because i am moving a dynamic library into the /usr/lib64 folder, as most distros don't have libz3.so.4 in their repos and to move the Eastwood binaries into the /bin/ folder so that the VS Code extension can find it. Only tested on Fedora so far and seems to work alright, do tell me if you find any issues/missing dependencies

Requirements:
  - jq
  - curl
  - tar
  - ar
  - gcc
  - libc
