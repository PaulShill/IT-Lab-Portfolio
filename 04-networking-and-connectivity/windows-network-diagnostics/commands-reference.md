# Windows Network Diagnostics — Command Reference

## 1. IP Configuration

### ipconfig
Displays basic IP configuration.

### ipconfig /all
Displays detailed adapter configuration, including:
- IPv4 and IPv6 addresses
- Subnet mask
- Default gateway
- DHCP status and server
- DNS servers
- Physical (MAC) address

### ipconfig /displaydns
Displays the local DNS resolver cache, including cached records and TTL values.

### ipconfig /flushdns
Clears the local DNS resolver cache.

### ipconfig /renew "WiFi"
Requests a DHCP lease renewal for the specified network adapter.

## 2. DNS Diagnostics

### nslookup google.com
Queries the configured DNS server to resolve a hostname.

### nslookup google.com 1.1.1.1
Queries Cloudflare DNS directly, bypassing the configured DNS server.

### nslookup google.com 8.8.8.8
Queries Google Public DNS directly.

### Resolve-DnsName google.com
Performs DNS resolution using PowerShell and returns available records.

### Resolve-DnsName google.com -Type MX
Queries Mail Exchange records, identifying mail-routing infrastructure.

### Resolve-DnsName google.com -Type NS
Queries Name Server records, identifying authoritative DNS servers.

## 3. Connectivity Testing

### ping 192.168.1.254
Tests connectivity to the local default gateway.

### ping 1.1.1.1
Tests external IPv4 connectivity using an IP address, avoiding dependence on DNS resolution.

### ping google.com
Tests hostname resolution and connectivity. Windows may select IPv4 or IPv6.

## 4. Route Diagnostics

### tracert google.com
Traces the network path to a hostname, identifying intermediate hops.

### tracert 1.1.1.1
Traces the IPv4 route to an external destination.

### route print
Displays the IPv4 and IPv6 routing tables, including default routes, network routes and metrics.

Routing uses longest-prefix match. Metrics help determine the preferred route when routes have equal specificity.

## 5. ARP Diagnostics

### arp -a
Displays the ARP cache, mapping local IPv4 addresses to physical MAC addresses.

### arp -d *
Deletes dynamic ARP cache entries. Administrative privileges are required.

After clearing the cache, generating traffic to the gateway allows Windows to rediscover its MAC address.

## 6. TCP Connectivity

### Test-NetConnection google.com -Port 443
Tests TCP connectivity to the destination on port 443 (HTTPS).

### Test-NetConnection google.com -Port 80
Tests TCP connectivity to the destination on port 80 (HTTP).

TcpTestSucceeded : True indicates that the TCP connection was successfully established.

## 7. PowerShell Session Recording

### Start-Transcript
Starts recording PowerShell commands and console output to a transcript file.

### Stop-Transcript
Stops the active transcript and saves the recorded session.

## 8. Important Parameter Explanations

- /all: Displays all available IP configuration details.
- /displaydns: Displays cached DNS records.
- /flushdns: Clears cached DNS records.
- /renew: Requests a DHCP lease renewal.
- -Type: Specifies the DNS record type to query.
- -Port: Specifies the destination TCP port to test.
- -a: Displays ARP cache entries.
- -d: Deletes an ARP cache entry.
- *: Wildcard representing all matching entries.

## 9. Technical Concepts Demonstrated

- DHCP lease management
- DNS resolution and record types
- IPv4 and IPv6 connectivity
- ICMP echo testing
- TCP connection testing
- Network path discovery
- Routing tables and route selection
- ARP address resolution
- PowerShell session logging

