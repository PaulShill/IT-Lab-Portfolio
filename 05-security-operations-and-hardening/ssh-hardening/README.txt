# Lab 1: SSH Server Hardening & Fail2ban

Ran this lab on my Ubuntu machine to lock down SSH and protect it against automated brute-force attacks.

## What I Used
* **OS:** Ubuntu Linux
* **Tools:** OpenSSH (`openssh-server`), `ssh-keygen`, `fail2ban`, `systemctl`
* **Protocol/Port:** SSH (TCP Port 22)

## What I Did

1. **Set Up SSH Keys**
* Generated an Ed25519 key pair using `ssh-keygen -t ed25519`.
* Copied the public key into `~/.ssh/authorized_keys` and set proper permissions (`chmod 600` on the keys file, `chmod 700` on the `.ssh` folder) so the SSH daemon would actually accept it.

2. **Hardened the SSH Config**
* Made a quick backup of `/etc/ssh/sshd_config` just in case this would be needed in the future.
* Edited the config file to lock down a key settings:
* `PermitRootLogin no` (stopped root from logging in remotely)
* `PasswordAuthentication no` (forced key-only logins, passwords disabled)
* `MaxAuthTries 3` (dropped the allowed failed attempts per try)
* `X11Forwarding no` (turned off GUI forwarding I don't need)
* Ran `sudo sshd -t` to check for typos before restarting the service with `sudo systemctl restart ssh`.

3. **Configured Fail2ban**
* Installed Fail2ban via `apt`, then copied over the default template to make a local config file (`/etc/fail2ban/jail.local`).
* Turned on the `[sshd]` jail to monitor `/var/log/auth.log`, setting `maxretry = 3`, `findtime = 10m`, and `bantime = 1h`.
* Enabled and started the service with `sudo systemctl enable --now fail2ban`.
* Checked that it was running properly with `sudo fail2ban-client status sshd`.

## Why This Matters in the Real World
* **Server Security:** Essential baseline for any Linux box or cloud VM sitting on a network to prevent unauthorized remote access.
* **Stopping Brute-Force Bots:** Keeps automated scripts from hammering the login port indefinitely by dropping bad IPs via the firewall.
* **Best Practices:** Aligns with standard hardening checklists (like CIS benchmarks) for managing access control.

## Files Included
* `lab-session.txt`
