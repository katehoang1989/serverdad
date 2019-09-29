#!/bin/bash

#Get bin folder
BIN=/usr/local/bin/serverdad
#Get sbin folder
SBIN=/usr/local/sbin/serverdad

###########################
# Setting up system link
###########################
echo ""
echo "Setup System Link"
echo "------------"
echo "Would you like to setup system link now? (y/n)"
printf "> "
read answer

if [ "$answer" != "${answer#[Yy]}" ]
then
    echo ""

    if [ -f $DIR/appLink ]
    then
        echo "Removed old link file"
        rm $DIR/appLink
    fi

    echo ""
    echo "Creating new file"
    echo "#!/bin/bash" >> $DIR/appLink
    echo "" >> $DIR/appLink
    echo "cd $DIR" >> $DIR/appLink
    printf './serverdad $@' >> $DIR/appLink

    chmod +x $DIR/appLink

    echo ""
    echo "Linking file to $BIN"
    if [ -f $BIN ]
    then
        echo "Removed old link file"
        sudo rm $BIN
    fi
    
    sudo ln -s $DIR/appLink $BIN

    echo ""
    echo "Linking file to $SBIN"
    if [ -f $SBIN ]
    then
        echo "Removed old link file"
        sudo rm $SBIN
    fi

    sudo ln -s $DIR/appLink $SBIN
fi