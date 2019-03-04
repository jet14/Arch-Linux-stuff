# Arch-Linux-stuff
Arch Linux stuff: 
I wanted to speed up common commands i use in terminal/console in linux, one way is to use Alias for commands, i decided the function keys are available so one can use them to carry out your favourite commands instead of having to type them in, I show a few as an example you can add your own in place, and update your .bashrc file. 
To check which keys correspond to which escape sequence use this web page to lookup code : http://aperiodic.net/phil/archives/Geekery/term-function-keys.html or just use google.
They will work for all GNU/Linux terminals
Tip: i have added myself as not requiring password so commands work instantly. F9 for screenfetch and F12 to run pacman -Syu.
I have updated .bashrc with F1 - F9 used and F12. F10 & F11 are used by terminal menu.
{Adding a more complex command using arguments caused error, resolved by placing commands in separate bash file and invoke that file containing commands ie. lp.sh & ex.sh updated bashrc to reflect.} << no longer required as improved method by adding extra menus as below within the function keys.


New update added nested menu within function F3, F4 & F5 to allow upto 10 further commands to be run from each menu as an example,
I have setup pacman file search & filter commands up in menu.sh and left menu2 and menu3 blank for anyone to add their own group of commands.
