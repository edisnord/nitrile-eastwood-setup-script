printf "This script will set up a Clean environment with nitrile and eastwood for Fedora users, have not tested it on other distros(but it could work)"
printf "\nRequires the 'ar' package to extract deb files and having an x86 Linux PC. \nInstallation will begin in 5 seconds\n"
sleep 5

mkdir nitrile-script-temp
cd nitrile-script-temp

echo "Downloading and installing libz3-4..."
sleep 2
mkdir z3deb
cd z3deb
curl http://archive.ubuntu.com/ubuntu/pool/universe/z/z3/libz3-4_4.4.1-0.3build4_amd64.deb -o z3.deb
ar x z3.deb
tar -xf data.tar.xz
sudo mv ./usr/lib/x86_64-linux-gnu/* /usr/lib64/
cd ..
echo "Downloading and installing Nitrile..."
sleep 2
curl https://clean-lang.org/install.sh | /bin/sh

echo "Downloading and installing Eastwood..."
sleep 2
~/.nitrile/bin/nitrile update
~/.nitrile/bin/nitrile global install eastwood

echo "Don't forget to add ~/.nitrile/bin to your PATH"
echo "Enjoy :)"
sleep 2
