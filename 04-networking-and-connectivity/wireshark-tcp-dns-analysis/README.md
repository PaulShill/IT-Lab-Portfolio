# Lab 1: Wireshark IPv6 Link-Local & DNS Protocol Analysis

## Objective
Analyze Layer 3 addressing and Layer 4 transport behavior on Ubuntu, by using Wireshark to evaluate protocols and local network name resolution.

## Environment & Tools
* **OS:** Ubuntu Linux
* **Network Interface:** `wlp3s0` (Wireless LAN)
* **Tools Used:** Wireshark, CLI utilities (`dig`, `curl`)
* **Protocols Inspected:** DNS (UDP 53), IPv6 Link-Local, Ethernet II

## Key Findings & Observations

### 1. IPv6 Link-Local DNS Resolution
* **Capture Evidence:** Wireshark filtered traffic using `dns` showed local name resolution requests traveling via IPv6 rather than IPv4.
* **Addressing Details:** Source and destination fields showing IPv6 addresses (this is evidenced by the `fe80::/10` prefix), confirming that the Linux host negotiated DNS queries with the local network gateway over IPv6 without requiring DHCPv4.

## Lab Artifacts
* Capture File: `lab1_tcp_dns_analysis.pcapng`
