read -p "this will overwrite your tmux config, and add an alias to your .profile, proceed? Y/n" -r -n 1
if [[ ! $REPLY =~ ^[nN]$ ]]
then
  rm -f ~/.tmux.conf
  ln -s $(pwd)/tmux.conf ~/.tmux.conf

  rm -f ~/.profile-tmux
  ln -s $(pwd)/profile-tmux ~/.profile-tmux

  echo "Adding tmux-session alias to your .profile..."
  grep -q 'alias tmux-session' ~/.profile && sed "s/^alias tmux-session.*$/alias tmux-session='tmux -S \/tmp\/pairing -2 attach -t Session'/" -i ~/.profile || echo "alias tmux-session='tmux -S /tmp/pairing -2 attach -t Session'" >> ~/.profile

  echo -e "\033[0;33m"
  cat ./success.txt 
  echo -e "\033[0m"
fi

