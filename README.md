# Custom-terminal
A few lines to add to your .bashrc to customize your terminal!

There are two important files in the home directory which can be accessed (or created) using

`<editor> ~/.bashrc`

   where \<editor\> can be any text editor of your choice (eg. nano, vi or gedit)
~/.bashrc is executed everytime a new shell is opened. ~/.bash_profile is executed when a user logs in to a shell either remotely or locally.

changes made to the file can either be visualized by opening a new terminal or by 

`source ~/.bashrc`
  
You can add any lines you please from the example ~/.bashrc file that you will find in this repository. Read the comments to find out what each section does. Do let me know if you find it useful!

If you want to play around with what you print using echo check out this [link](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

if by some chance you mess up you bashrc, you can replace it with a back up that is always available in /etc/skel/ by

`cp /etc/skel/.bashrc ~/.bashrc`

and then source or reopen terminal. You can also open the file in /etc/skel/ in a text editor and copy the text that you need and pasted it into your bashrc so as to not lose and changes that you made.

*everything in this repository was tested on Ubuntu 16.04.6 LTS. You can check yours using
`lsb_release -a`
if this does not work, first install it using
`sudo apt install lsb-release`
If there are any issues in newer or older versions, do let me know.*
