# Arch-Linux-stuff
Arch Linux stuff: 
I wanted to speed up common commands i use in terminal/console in linux, one way is to use Alias for commands, i decided the function keys are available so one can use them to carry out your favourite commands instead of having to type them in, I show a few as an example you can add your own in place, and update your .bashrc file. 
To check which keys correspond to which escape sequence use this web page to lookup code : http://aperiodic.net/phil/archives/Geekery/term-function-keys.html or just use google.
They will work for all GNU/Linux terminals
Tip: i have added myself as not requiring password so commands work instantly. F9 for screenfetch and F12 to run pacman -Syu.
I have updated .bashrc with F1 - F9 used and F12. F10 & F11 are used by terminal menu.

New update added nested menu within function F3, F4 & F5 to allow upto 10 further commands to be run from each menu as an example,
I have setup pacman file search & filter commands up in menu.sh and left menu2 and menu3 blank for anyone to add their own group of commands.
Updated menu.sh completed, menu 2 ammended. In update mirrorlist amend command for your own country, currently set for GB (UK).
Hopefully this will come in handy for someone. For menu3 i propose adding systemd commands or maintenance commands for arch. 
9/3/2019 Updated all 3 menus, tested and final update for now.

18/3/19 Further improved code & error checking:
close program by upper or lowercase  x or X
Will only accept keys 0 - 9 in menu, so no wrong key presses
Clear screen beginning and end and restores.
Improved menu layout and outputs from commands so the page to less etc.
Renamed to f3, f4 & f5 contain sub-menus, amend them to your own commands
Tip: I have placed files in $home directory and have sudo access so all commands work without password to make it seemless only key presses required no pressing enter, on some screens simply press any key & screen will refresh menu if it gets garbled.

Hope it comes in handy for someone !!!

27/3/19 : A new program i've written Lottery no generator for UK lottery with all games and extra's; program name simply lot
