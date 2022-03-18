# sublime text dotfiles
sublimedotfilesdir=~/dot-mac/settings/sublime

# create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p ~/Library/Application\ Support/Sublime\ Text/Packages/User

# list of sublime config
SUBLIMEFILES=(".neovintageousrc"
"Default (OSX).sublime-keymap"
"Package Control.sublime-settings"
"Preferences.sublime-settings"
"Fetch.sublime-settings")

#change to the sublime text dotfiles directory
echo "Changing to the ${sublimedotfilesdir} directory"
cd ${sublimedotfilesdir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for ((i = 0; i < ${#SUBLIMEFILES[@]}; i++))
do
	echo "Creating symlink to ${SUBLIMEFILES[$i]} in ~/Library/Application\ Support/Sublime\ Text/Packages/User."
	ln -s ${sublimedotfilesdir}/${SUBLIMEFILES[$i]} ~/Library/Application\ Support/Sublime\ Text/Packages/User/${SUBLIMEFILES[$i]}
done

#for file in ${SUBLIMEFILES}; do
#	echo "Creating symlink to $file in ~/Library/Application\ Support/Sublime\ Text/Packages/User."
#	ln -s ${sublimedotfilesdir}/${file} ~/Library/Application\ Support/Sublime\ Text/Packages/User/${file}
#done

# Create symlink to subl command
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
