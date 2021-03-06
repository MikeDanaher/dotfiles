#!/usr/bin/env bash
echo
echo "This script will walk through each group of settings (bash, vim, gvim, rspec, and git) to check if you have an existing config file for that group. If you do, you will have three options:"
echo "  1. Keep using your existing config file and don't hook up to the dotfiles' settings for that group"
echo "  2. Archive your existing config file (renaming it with the suffix '_old') and hooking up to the dotfiles' settings for that group"
echo "  3. Delete your existing config file and hook up to the dotfiles' settings for that group"
echo "Assuming you choose option 2 or 3, the script will create a symlink pointing the requisite system file to the appropriate file in the dotfiles directory."
echo
echo

declare -A configs=(
  ["bash"]=".bashrc"
  ["vim"]=".vimrc"
  ["rspec"]=".rspec"
  ["git"]=".gitconfig"
  ["gvim"]=".gvimrc"
  ["tmux"]=".tmux.conf"
)

for groupname in "${!configs[@]}"
do
  filename="${configs["$groupname"]}"
  suffix="_old"
  archive_filename=$filename$suffix

  echo "##"
  echo "## ${groupname^^}"
  echo "##"
  echo

  echo "Looking for existing $filename file..."
  if [ -f ~/$filename ]
  then
    echo "Existing $filename file found. What would you like to do?"
    echo "  (k)eep using the existing $filename file and ignore the $groupname settings in the dotfiles repo"
    echo "  (a)rchive the existing $filename file, but start using the $groupname settings in the dotfiles repo"
    echo "  (d)elete the existing $filename file and start using the $groupname settings in the dotfiles repo"
    echo "     Warning! This will *permanently delete* the existing $filename file!"

    for (( ; ; ))
    do
      read decision

      if [ "${decision,,}" = "k" ]
      then
        echo "Keeping existing $filename file in place."
        break

      elif [ "${decision,,}" = "a" ]
      then
        echo "Archiving existing $filename file..."
        mv ~/$filename ~/$archive_filename
        echo "Existing $filename file successfully archived."
        break

      elif [ "${decision,,}" = "d" ]
      then
        echo "DANGER! Are you sure you want to permanently delete your existing $filename file? Type 'delete' to confirm."
        for (( ; ; ))
        do
          read confirm
          if [ "$confirm" = "delete" ]
          then
            echo "Deleting existing $filename file..."
            rm ~/$filename
            echo "Original $filename file successfully deleted."
            break 2
          else
            echo "Aborted delete. Do you want to (k)eep using your existing $filename file or (a)rchive it and use the dotfiles' $groupname settings?"
            break
          fi
        done

      else
        echo "That is not a valid input. Please decide whether you want to:"
        echo "  (k)eep using your existing $filename file,"
        echo "  (a)rchive your existing $filename file and start using the $groupname settings in the dotfiles repo, or"
        echo "  (d)elete your existing $filename file and start using the $groupname settings in the dotfiles repo."
      fi
    done

  else
    echo "Did not find existing $filename file."
  fi
  echo

  if [ "${decision,,}" != "k" ]
  then
    echo "Creating symlink to dotfiles' $groupname settings..."
    ln -s ~/dev/dotfiles/$groupname/$groupname ~/$filename
    echo "Symlink created successfully! You are now using the dotfiles' $groupname settings."
  fi

  echo
  echo
done

echo "Create bash_profile"
echo "source ~/.bashrc" > ~/.bash_profile

echo "Create more folders"
mkdir ~/Dev/dotfiles/bash/secret/
touch ~/Dev/dotfiles/bash/secret/secrets
mkdir ~/Dev/8thLight/

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Dotfiles setup complete!"
echo "Changes will take effect after restarting your terminal."
echo
