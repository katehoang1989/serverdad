#!/bin/bash

#Get bin folder
BIN=/usr/bin/serverdad
#Get sbin folder
SBIN=/usr/sbin/serverdad

###########################
# Setting up system link
###########################
echo ""
echo "[*] Setup System Link"
echo ""
echo "  [-] Would you like to setup system link now?"
printf "      (Y/n) >> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    echo ""

    if [ -f $DIR/appLink ]
    then
        echo "  [*] Removed old link file"
	echo ""
        rm $DIR/appLink
    fi

    echo "  [*] Creating new file"
    echo "#!/bin/bash" >> $DIR/appLink
    echo "" >> $DIR/appLink
    echo "cd $DIR" >> $DIR/appLink
    printf './serverdad $@' >> $DIR/appLink

    chmod +x $DIR/appLink

    echo ""
    echo "  [*] Linking file to $BIN"
    if [ -f $BIN ]
    then
        echo "  [*] Removed old $BIN file"
        sudo rm $BIN
    fi
    
    sudo ln -s $DIR/appLink $BIN

    echo ""
    echo "  [*] Linking file to $SBIN"
    if [ -f $SBIN ]
    then
        echo "  [*] Removed old $SBIN file"
        sudo rm $SBIN
    fi

    sudo ln -s $DIR/appLink $SBIN
fi
