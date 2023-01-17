### Enabling SSH on Linux
- Install **openssh-server**: `sudo apt install openssh-server`
- Start SSH server
	- `service ssh start`
	- `systemctl start ssh`
	- `/etc/init.d/ssh start`
- Stop SSH server
	- `service ssh stop`
	- `systemctl stop ssh`
	- `/etc/init.d/ssh stop`
- View status of SSH server
	- `service ssh status`
	- `systemctl status ssh`
	- `/etc/init.d/ssh status`
- Allow SSH from Firewall
	- `sudo ufw allow ssh`

### OneDrive Cloud Syncing
GitHub Repo: https://github.com/abraunegg/onedrive
- To sync: `onedrive --synchronize`
- To continuously monitor file system changes and sync: `onedrive --monitor`
- To logout: `onedrive --logout`
	- In case password change, needs to logout and re-login.
- How service starts? (No idea!!!)
	- `service onedrive start`
	- But this throws error: `Failed to start onedrive.service: Unit onedrive.service not found.` 
	- I found running instance of `/usr/bin/onedrive --monitor`
		- But no idea how it got started. #Unknown 

### Google Drive Cloud Syncing
GitHub Repo: https://github.com/odeke-em/drive
It's not a full backup and sync like client instead it is manual push/pull based client which can easily interact with Google Drive file system.

### Misc
- Git password is stored in GNOME/Keyring
- Java alternatives version: `sudo alternatives --config java`
