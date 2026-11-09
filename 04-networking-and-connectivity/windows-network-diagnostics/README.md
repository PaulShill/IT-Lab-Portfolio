# Windows Network Diagnostics Lab

## Project Overview

A practical Windows networking and troubleshooting lab using native Windows command-line utilities and PowerShell.

The project demonstrates hands-on investigation of IP configuration, DHCP, DNS, IPv4 and IPv6 connectivity, routing, ARP resolution and TCP connectivity.

The lab supports practical preparation for CompTIA A+ (220-1201) and CompTIA Network+.

## Environment

- Operating System: Windows 11
- Terminal: Windows PowerShell
- Network: Wi-Fi and Hyper-V virtual networking
- Tools: ipconfig, ping, nslookup, Resolve-DnsName, tracert, route, arp and Test-NetConnection

## Practical Work Completed

### 1. IP Configuration
- Inspected network adapter configuration using ipconfig.
- Examined IPv4, IPv6, subnet masks, gateways and DNS settings.
- Identified physical and virtual network adapters.

### 2. DHCP
- Inspected DHCP configuration and lease information.
- Performed a DHCP lease renewal on the Wi-Fi adapter.
- Confirmed the resulting adapter configuration.

### 3. DNS
- Investigated the local DNS resolver cache.
- Compared configured DNS resolution with Cloudflare and Google public DNS.
- Used Resolve-DnsName to examine A, AAAA, MX and NS records.
- Flushed the local DNS cache.

### 4. Connectivity
- Tested local gateway connectivity.
- Tested external IPv4 connectivity.
- Tested hostname resolution and connectivity using ping.
- Observed Windows selecting IPv6 for some hostname-based connections.

### 5. Routing
- Used tracert to investigate IPv4 and IPv6 network paths.
- Examined routing tables using route print.
- Investigated default routes, network routes and route metrics.
- Observed intermediate traceroute timeouts while the final destination remained reachable.

### 6. ARP
- Examined ARP cache entries using arp -a.
- Cleared ARP entries using administrative privileges.
- Generated traffic to the gateway and observed ARP cache repopulation.

### 7. TCP Connectivity
- Used Test-NetConnection to test TCP port 443 (HTTPS).
- Tested TCP port 80 (HTTP).
- Confirmed successful TCP connections to both destinations.

## Key Technical Learning

This lab reinforced the practical relationship between:

- DHCP address allocation and lease renewal.
- DNS resolution and record types.
- IPv4 and IPv6 connectivity.
- ICMP testing and TCP connectivity.
- Routing tables and path discovery.
- ARP resolution and local network communication.
- Systematic network fault isolation.

It also demonstrated why successful ping tests do not necessarily prove that an application service or TCP port is accessible.

## Real-World Applications

The techniques demonstrated are relevant to:

- IT support and service desk troubleshooting.
- Desktop and endpoint support.
- Network administration.
- Infrastructure operations.
- Connectivity and DNS fault investigation.
- Initial network diagnostics and fault isolation.

## Repository Contents

| File | Description |
|---|---|
| README.md | Project overview, practical work and results |
| lab-session6.txt | PowerShell session transcript |
| commands-reference.md | Command explanations and parameter reference |
| troubleshooting-scenarios.md | Five practical troubleshooting scenarios |

## Troubleshooting Approach

The lab follows a structured methodology:

1. Establish the reported symptom.
2. Inspect the current network configuration.
3. Test connectivity progressively.
4. Investigate DNS, DHCP and routing where relevant.
5. Identify the likely fault domain.
6. Apply controlled corrective actions.
7. Retest and document findings.

## Further Development

Future extensions could include:

- Packet capture and protocol analysis using Wireshark.
- Port and service discovery using Nmap.
- PowerShell network diagnostic automation.
- Windows Firewall investigation.
- Active Directory and DNS administration.

