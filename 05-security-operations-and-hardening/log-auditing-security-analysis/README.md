# Lab: Linux System Logging, Auditd Inspection, and Auth Log Analysis

Ran this lab on my old Ubuntu machine to practice auditing authentication logs, configuring kernel-level security rules with `auditd`, and parsing security event logs for system monitoring.

## What I Used

* **OS:** Ubuntu Linux
* **Tools:** `tail`, `grep`, `systemctl`, `auditctl`, `ausearch`, `apt`
* **Services/Files:** `/var/log/auth.log`, `auditd` daemon, `/etc/passwd`

## What I Did

1. **Audited Authentication & Sudo Logs**
* Queried `/var/log/auth.log` using `sudo tail -n 20 /var/log/auth.log` to review recent system login events and administrative privilege calls.
* Filtered log files using `sudo grep -i "failed" /var/log/auth.log` to audit unsuccessful login attempts and privilege escalation warnings.

2. **Configured Linux Kernel Auditing (`auditd`)**
* Installed the `auditd` daemon using `apt` and verified service operation via `sudo systemctl status auditd`.
* Created a custom real-time file watch rule on `/etc/passwd` using `sudo auditctl -w /etc/passwd -p wa -k passwd_changes` to detect unauthorised write and attribute modifications.
* Verified active audit rules using `sudo auditctl -l`.

3. **Parsed Security Events with `ausearch`**
* Filtered audit logs using `sudo ausearch -k passwd_changes` to inspect tagged security events and track changes to user account configuration files.

## Why This Matters in the Real World

* **Security Information & Event Management (SIEM):** SOCs collect `/var/log/auth.log` and `auditd` telemetry to detect brute-force attacks, unauthorised access, and insider threats.
* **Compliance & Forensics:** Frameworks such as PCI-DSS, SOC 2, and CIS Benchmarks require immutable logging of sensitive system file changes (such as `/etc/passwd`) for forensic investigations.

## Files Included

* `lab-session.txt`
