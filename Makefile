update:
	sudo apt-get clean
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get full-upgrade
	sudo apt-get autoremove

restart_network:
	sudo service network-manager restart
