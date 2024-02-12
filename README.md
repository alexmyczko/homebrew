# homebrew-mac

`brew tap alexmyczko/mac`

Now you can install
```
- modplug-tools              Music player based on libopenmpt/modplug for the command-line   
- tcputils                   Utilities for TCP programming in shell-scripts
- ruptime                    poor man’s ruptime
- iselect                    Interactive line selection tool                                     
- form                       The FORM project for symbolic manipulation of very big expressions  
- Casks/pt2-clone            Music tracker clone of ProTracker 2 for modern computers            
- Casks/ft2-clone            Music tracker clone of Fasttracker II for modern computers          
- Casks/flying-toasters      Recreation of AfterDarks 2.0 Flying Toasters screensaver            
```

# Creating

`brew create url-to-your-source-tarball`

# Testing

`brew reinstall --build-from-source --verbose --interactive ./your.rb`

# Wishlist
```
- nvtop
- nweb
- yaku-ns
```

# Updating above list

`find . -name "*.rb" |sort -r | sed s,./,-\ ,1 | sed 's,.rb,,g' |while read a b; do echo "$a $b $(grep desc $b.rb)"|sed 's,desc,,g'; done |column -s \" -t >> README.md`
