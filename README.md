# Custom-terminal
A few lines to add to your .bashrc to customize your terminal!

There are two important files in the home directory which can be accessed (or created) using

\<editor\> ~/.bashrc

   and

\<editor\> ~/.bash_profile

   where \<editor\> can be any text editor of your choice (eg. nano, vi or gedit)
~/.bashrc is executed everytime a new shell is opened. ~/.bash_profile is executed when a user logs in to a shell either remotely or locally.

changes made to the file can either be visualized by opening a new terminal or by 
source ~/.bashrc
  
You can add any lines you please from the example ~/.bashrc file that you will find in this repository. Read the comments to find out what each section does. Do let me know if you find it useful!

This is a good resource to check out if you want to play around with what you print using echo https://misc.flogisoft.com/bash/tip_colors_and_formatting

if by some chance you mess up you bashrc, you can replace it with a back up that is always available in /etc/skel/ by

cp /etc/skel/.bashrc ~/.bashrc

and then source or reopen terminal. You can also open the file in /etc/skel/ in a text editor and copy the text that you need and pasted it into your bashrc so as to not lose and changes that you made.
