cd $PREFIX/bin
if [ -e termux-open ];then
echo
else
printf "\n\033[92m [+] \033[93m Requirements installing....\n"
sleep 0.50
pkg install termux-api
clear
echo
fi
cd $PREFIX/bin
if [ -e wget ];then
echo
else
printf "\n\033[92m [+] \033[93m Requirements installing....\n"
sleep 0.50
pkg install wget
clear
fi
cd $PREFIX/bin
if [ -e figlet ];then
echo
else
pkg install figlet
pkg install toilet
fi
cd /sdcard
if [ -e S-Media-Info ];then
echo
else
termux-setup-storage
mkdir /sdcard/S-Media-Info
fi
insta () {
cd ~/S-Media-Info
s="toilet -f term -F gay"
figlet Instagram | $s
echo
echo -en "\033[32m Enter instagram username :- \033[77m"
read a
if [ $a ];then
wget https://www.instagram.com/$a > /dev/null 2>&1
mv $a $a.html
cp -f $a.html /sdcard/S-Media-Info
printf "\n\033[92m [√]\033[96m Saved $a.html in /sdcard/S-Media-Info\n"
printf "\n\033[35m Press enter to open in browser\n"
read
termux-open https://www.instagram.com/$a
fi
}
face () {
	cd ~/S-Media-Info
s="toilet -f term -F gay"
figlet Facebook | $s
echo
echo -en "\033[32m Enter Facebook username :- \033[77m"
read a
if [ $a ];then
wget https://www.facebook.com/$a > /dev/null 2>&1
mv $a $a.html
cp -f $a.html /sdcard/S-Media-Info
printf "\n\033[92m [√]\033[96m Saved $a.html in /sdcard/S-Media-Info\n"
printf "\n\033[35m Press enter to open in browser\n"
read
termux-open https://www.facebook.com/$a
fi
}
gith () {
	cd ~/S-Media-Info
s="toilet -f term -F gay"
figlet Github | $s
echo
echo -en "\033[32m Enter Github username :- \033[77m"
read a
if [ $a ];then
wget https://www.github.com/$a > /dev/null 2>&1
mv $a $a.html
cp -f $a.html /sdcard/S-Media-Info
printf "\n\033[92m [√]\033[96m Saved $a.html in /sdcard/S-Media-Info\n"
printf "\n\033[35m Press enter to open in browser\n"
read
termux-open https://www.github.com/$a
fi
}
likh="printf"
s="toilet -f term -F gay"
lal="\033[91m"
hara="\033[32m"
clear
echo
cd ~/S-Media-Info
figlet Social-Media | $s
echo
$likh "	$lal [ 1 ]$hara Instagram
	$lal [ 2 ]$hara Facebook
	$lal [ 3 ]$hara Github
	$lal [ 4 ]$hara Exit
	
	"
	printf "\n\033[33m %s Select > "
	read b
	case $b in
	1)insta ;;
	2)face ;;
	3)gith ;;
	4)exit 0 ;;
	*)bash s-info.sh ;;
	esac