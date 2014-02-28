battmux
=======

Bruce Wayne tmux widget, specially designed for batVim

### Features
* Opens a default session with three tabs: Vim, Tests and Git, with a special bash profile.
* Tabs indexes start in 1 instead of 0.
* Cycle through tabs with `alt + left/right`.
* Go to next tab with `ctrl + n`, go to previous one with `ctrl + p`.
* Open new tab with `ctrl + t`.
* Mouse scroll enabled.
* Reload tmux configuration with `ctrl + a r`.
* Escape key delay disabled.
* Ability to share your tmux session for pair programming.
* `ctrl + a d` for detaching without closing tabs.

### Pair programming
* When using the alias 'tmux-session', the socket is placed at /tmp/pairing.
* When in tmux, you can share your session with `share` and unshare it with `unshare`
* Once shared, any user in your system can access your session with `tmux -S /tmp/pairing attach`

We recommend creating an account for pairing with ssh access to your machine, and place the example `profile_for_pairing` profile file at the pairing account' home, renamed as `.profile`. This will automatically attach the pairing account' session to your tmux session if it is shared, and not allow logging if it's unshared or not exists. Also, it will close the ssh session in case you detach from tmux.

