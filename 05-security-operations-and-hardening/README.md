# Lab: Linux User Account Auditing & Privilege Management

Ran this lab on my Ubuntu machine to audit active user accounts, verify administrative group memberships, and manage local user lifecycles securely from the command line.

## What I Used

* **OS:** Ubuntu Linux
* **Tools:** `cat`, `grep`, `getent`, `useradd`, `userdel`, `sudo`
* **Files:** `/etc/passwd`, `/etc/group`

## What I Did

1. **Audited Active Login Accounts**
* Filtered system user files using `cat /etc/passwd | grep -v nologin` to isolate interactive user shells from automated system service accounts.

2. **Audited Administrative Group Memberships**
* Queried system group databases using `sudo getent group sudo` to review exactly which users hold root-level execution rights.

3. **Managed User Account Lifecycles**
* Created a temporary test user using `sudo useradd -m -s /bin/bash auditor_test` and assigned an account password.
* Securely decommissioned and completely purged the test account and its home directory using `sudo userdel -r auditor_test`.

## Why This Matters in the Real World

* **Access Control & Least Privilege:** Regularly auditing local accounts prevents dormant or unauthorized accounts from becoming vectors for privilege escalation.
* **Compliance & Hardening:** Standard server security baselines require tight tracking of who holds root and sudo access across production environments.
* **CompTIA Security+ Alignment:** Directly reinforces identity and access management (IAM) principles, account auditing controls, and administrative system hardening.

## Files Included

* `lab-session.txt`
