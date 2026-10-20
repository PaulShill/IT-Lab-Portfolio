# Lab 2: Linux Network Diagnostics and Routing Troubleshooting

## Objective
Gain experience in Linux command line utilities for Network+ exam. These tools are used for network investigation, route tracing, DNS resolution, and socket inspection. Real world scenarios include: users being unable to access external websites or internal resources such as a file server; slow performance from SaaS apps such as M365, or DNS caching issues.

## Environment & Tools
* **OS:** Ubuntu Linux
* **Network Interface:** wlp3s0 (Wireless LAN)
* **Tools Used:** CLI utilities (dig, ip, traceroute and ss)
* **Protocols Inspected:** IPv4/IPv6 Routing, ICMP, TCP/UDP Sockets, DNS (UDP 53)

## Key Findings & Observations

### 1. Local Interface & IP Configuration (`ip addr show`)
* **Execution & Evidence:** Ran `ip addr show` to inspect network interfaces on `wlp3s0`.
* **Observations:** Verified assigned IPv4 and IPv6 addresses, subnet masks, and operational link states, confirming active connection parameters.

### 2. Routing Table Inspection (`ip route show`)
* **Execution & Evidence:** Queried the kernel routing table using `ip route show`.
* **Observations:** Identified the active default gateway, metric costs, and direct-attached subnet routes determining how outbound packets leave the host.

### 3. Path Tracing & Latency (`traceroute`)
* **Execution & Evidence:** Traced network path hops to target `8.8.8.8` using `traceroute`.
* **Observations:** Measured round-trip times across intermediate router hops, identifying path latency and potential bottlenecks between the local wireless interface and external infrastructure.

### 4. DNS Resolution Probing (`dig`)
* **Execution & Evidence:** Executed `dig @8.8.8.8 github.com` to probe name resolution behavior.
* **Observations:** Directly queried Google's public DNS nameserver over UDP port 53, verifying successful domain-to-IP resolution independent of local resolver caches.

### 5. Socket & Port Auditing (`ss`)
* **Execution & Evidence:** Inspected active and listening sockets using `ss -tuln`.
* **Observations:** Displayed numeric TCP and UDP listening ports active on the system, auditing local service exposure and verifying socket states.

## Lab Artifacts
* **Command Log:** `commands.txt`
