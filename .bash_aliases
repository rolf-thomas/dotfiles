alias cdw='cd /var/www && ll'
alias mux='tmux attach -t base || tmux new -s base'
alias ..='cd ..'

# Allgemeine Kommandos
alias _cron_edit='sudo crontab -e'
alias _system_restart='sudo reboot'
alias _system_shutdown='sudo shutdown -h now'
alias _info_diskspace='du -h --max-depth=1'
alias _info_system='/etc/update-motd.d/50-landscape-sysinfo'
alias _info_mysql='mysqladmin status -u web -p'
alias _info_memory='ps -eo pmem,pcpu,vsize,pid,cmd | sort -k 1 -nr | head -2'

# git related
alias _git_size='git gc && git count-objects -vH'

# Updates
alias _update_system='sudo apt-get --yes clean && sudo apt-get --yes update && sudo apt-get --yes dist-upgrade && sudo reboot'
alias _update_system_tmux='tmux new -d -s update && tmux send -t update.0 "_update_system" ENTER'
# -> regarding changelogs see http://askubuntu.com/questions/272215/seeing-apt-get-changelogs-for-to-be-upgraded-packages
alias _update_letsencrypt='cd /opt/letsencrypt && sudo git reset --hard && sudo git pull'
alias _update_certificates='sudo /opt/letsencrypt/letsencrypt-auto renew'

# git/dotfiles related
alias _dotfiles_init='mkdir ~/repositories && cd ~/repositories && git clone https://github.com/rolf-thomas/dotfiles.git && cd ~'
alias _dotfiles_update='cd ~/repositories/dotfiles && git pull && rsync -rv --exclude=.git . ~/ && source ~/.bashrc && cd ~'

# Shows Redirects of a given url
# usage: `redirect http://google.com`
_redirect() {
	curl -vL $1 2>&1 | grep --color -i -e "> get" -e "< location:" -e "> host"
}
