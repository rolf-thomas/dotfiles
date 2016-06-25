# Eigene Kommandos
alias cdw='cd /var/www && ll'
alias systeminfo='/etc/update-motd.d/50-landscape-sysinfo'
alias mux='tmux attach -t base || tmux new -s base'
alias neustart='sudo reboot'
alias ausschalten='sudo shutdown -h now'

# Updates
alias systemupdate='sudo apt-get --yes clean && sudo apt-get --yes update && sudo apt-get --yes dist-upgrade && sudo reboot'
alias update_letsencrypt='cd /opt/letsencrypt && sudo git pull'
