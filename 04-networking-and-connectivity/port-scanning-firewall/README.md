# Lab 4: Port Scanning, Service Discovery, and Firewall Hardening

## Environment & Tools
* **OS:** Ubuntu Linux
* **Tools Used:** nmap, ufw, ss, script, apt, systemctl
* **Protocols Inspected:** TCP, UDP, ICMP

## Key Findings & Observations
* **Service Mapping:** Utilized `ss -tuln` and `nmap` (`-sT`, `-sV`) to map open ports and identify active daemon versions on my Ubuntu laptop
* **Firewall Enforcement & Troubleshooting:** Configured UFW rules
* **Service Validation:** Noticed that SSH port 22 wasn't showing, so installed and started the OpenSSH server daemon to show SSH in nmap.
* **Post Firewall Hardening Validation:** Verified via nmap scan that non-whitelisted ports were shown as secure state in firewall rules.

## Real-World Applications
* **Vulnerability & Asset Auditing:** Used by sys admins and security analysts to audit attack surfaces.
* **Network Hardening & Compliance:** Adheres to defense-in-depth principles and zero-trust perimeter control.
* **Troubleshooting Connectivity:** Helps technical support teams determine whether connection failures have come from host-based security rules or firewall configurations

## Lab Artifacts
* **Interactive Session Recording:** `lab-session4.txt`
