read -p "this will overwrite your tmux config, proceed? Y/n" -r -n 1
if [[ ! $REPLY =~ ^[nN]$ ]]
then
  rm ~/.tmux.conf
  ln -s $(pwd)/.tmux.conf ~/.tmux.conf

  echo -e "\033[0;33m"
  cat ./success.txt 
  echo -e "\033[0m"
fi

