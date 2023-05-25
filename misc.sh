# hide the "Last login: Wed Feb  8 10:53:25 on ttys001" message
# by creating a .hushlogin file if it doesn't exist yet
if [ ! -f ~/.hushlogin ]; then
    touch ~/.hushlogin
fi
