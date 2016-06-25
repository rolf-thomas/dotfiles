# Allgemeine Kommandos
alias cdw='cd /var/www && ll'
alias systeminfo='/etc/update-motd.d/50-landscape-sysinfo'
alias mux='tmux attach -t base || tmux new -s base'
alias edit_cron='sudo crontab -e'
alias neustart='sudo reboot'
alias ausschalten='sudo shutdown -h now'

# Updates
alias update_system='sudo apt-get --yes clean && sudo apt-get --yes update && sudo apt-get --yes dist-upgrade && sudo reboot'
# -> regarding changelogs see http://askubuntu.com/questions/272215/seeing-apt-get-changelogs-for-to-be-upgraded-packages
alias update_letsencrypt='cd /opt/letsencrypt && sudo git reset --hard && sudo git pull'

# git related
alias dotfiles_init='mkdir ~/repositories && cd ~/repositories && git clone https://github.com/rolf-thomas/dotfiles.git && cd ~'
alias dotfiles_update='cd ~/repositories/dotfiles && git pull && rsync -rv --exclude=.git . ~/ && source ~/.bashrc && cd ~'
