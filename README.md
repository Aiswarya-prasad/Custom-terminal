# Custom-terminal
A few lines to add to your .bashrc to customize your terminal!

There are two files in this repo
- **example_default.sh** - is what is already present by default in ~/.bashrc
- **edited.sh** - contains the edits that I made ~/.bashrc
- **ready_edited.sh** - is a ready to use version

Those lines in **edited.sh** that are present in **example_default.sh** have been commented out (comments have an extra #). If you want to directly replace your bashrc with an edited one use **ready_edited.sh** and make sure to replace \<username\> with your username and check that all the paths are correct.

You can copy and add any lines you please from the **edited.sh** to your ~/.bashrc file. [^1] Read the comments in the file to find out what each section does. Do let me know if you find it useful!

If you want to play around with what you print using echo check out this [link](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

([^1]: It is good practice to make a copy of the most recent version (back-up) before editing)

***********************************************************************************

 Your .bashrc file is in the home directory which can be accessed (or created) using

`<editor> ~/.bashrc`

where \<editor\> can be any text editor of your choice (eg. atom, nano, vi or gedit)
~/.bashrc is executed everytime a new shell is opened. ~/.bash_profile is executed when a user logs in to a shell either remotely or locally.

changes made to the file can either be visualized by opening a new terminal or by 

`source ~/.bashrc`

if by some chance you mess up you bashrc, you can replace it with a back up that is always available in /etc/skel/ by

`cp /etc/skel/.bashrc ~/.bashrc`

and then source or reopen terminal. You can also open the file in /etc/skel/ in a text editor and copy the text that you need and pasted it into your bashrc so as to not lose and changes that you made.

*everything in this repository was tested on Ubuntu 16.04.6 LTS. You can check yours using
`lsb_release -a`
if this does not work, first install it using
`sudo apt install lsb-release`
If there are any issues in newer or older versions, do let me know.*
