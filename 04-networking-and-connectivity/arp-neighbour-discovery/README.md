# Lab 3: Local Network Mapping (Layer 2 and 3) - ARP and Neighbour Discovery

## Objective
Examine how bash resolves Layer 3 IP addresses to Layer 2 MAC addresses using the kernel neighbour table, ARP protocol, and cache states (REACHABLE/STALE).

## Environment & Tools
* **OS:** Ubuntu Linux
* **Network Interface:** wlp3s0 (Wireless LAN)
* **Tools Used:** `script`, `ip neigh`, `ip route`, `ping`, `arp`
* **Protocols Inspected:** ARP, ICMP, Ethernet II

## Key Findings & Observations
* **Neighbour Table (`ip neigh`):** Inspected active kernel bindings between local IP addresses and physical hardware MAC addresses.
* **Cache States & Re-verification (`STALE`):** Noticed that the gateway entry was `STALE` even after an initial ping. Wasn't sure why this would be the case, so researched and found that the Linux kernel prioritizes speed, it doesn't instantly throw away or block traffic on a cached MAC address just because it's marked stale; it uses it immediately while queueing a background check. Running more pings prompted the kernel to reverify and mark it as active.

## Lab Artifacts
* **Interactive Session Recording:** `lab-session.txt`
