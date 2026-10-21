 Lab 5: DHCP Lease Management and DORA Process Analysis

## Environment & Tools
* **OS:** Ubuntu Linux
* **Tools Used:** isc-dhcp-client (`dhclient`), NetworkManager (`nmcli`), `ip`, `script`
* **Protocols Inspected:** DHCP (BOOTP / UDP Ports 67 & 68), IPv4, ICMP

## Key Findings and Observations
* **NetworkManager vs. Standalone Client:** Ran into a real-world hurdle when trying to drop my IP address using standalone `dhclient` commands, only to find NetworkManager immediately overriding and preserving the lease. Learned how NetworkManager controls interface states versus raw client daemons.
* **Lease Persistence & Fast-Tracking:** Observed that when requesting a lease via `dhclient -v`, the client references local cache files. Rather than broadcasting a blind `DHCPDISCOVER`, it uses a fast-track `DHCPREQUEST` to renew its previous IP address (`192.168.1.217`) if still valid based on the lease history.
* **Transaction Verification:** Successfully captured live DHCP traffic output showing the DORA handshake,

## Real-World Applications
* **Network Troubleshooting:** Resolves IP address exhaustion, duplicate IPs, or clients stuck with self-assigned APIPA addresses.
* **Infrastructure Administration:** Used by network administrators when configuring DHCP scopes, relay agents, lease durations, and reservation tables across VLANs.
* **Security & Access Control:** Understanding DHCP behaviour helps detect rogue DHCP servers on networks that attempt adversary-in-the-middle attacks or traffic redirection.

## Lab Artifacts
* **Interactive Session Recording:** `dhcp-session.txt`
