# Windows Network Diagnostics — Troubleshooting Scenarios

These scenarios demonstrate how the commands and techniques from this lab can be applied to realistic IT support incidents.

They are illustrative troubleshooting exercises, not claims that these faults occurred during the practical lab.

---

## Scenario 1 — Device Has No Internet Connectivity

**Reported symptom:** A user can connect to Wi-Fi but cannot access external websites.

**Investigation sequence:**

1. Run `ipconfig /all` to inspect the IP address, subnet mask, default gateway and DNS configuration.
2. Run `ping 192.168.1.254` (replace with the actual default gateway) to test local connectivity.
3. Run `ping 1.1.1.1` to test external IPv4 connectivity without relying on DNS.
4. Run `nslookup google.com` to investigate hostname resolution.

**Interpretation:**

- Gateway unreachable: investigate local connectivity, adapter configuration or wireless infrastructure.
- Gateway reachable but external IP unreachable: investigate routing, firewall or upstream connectivity.
- External IP reachable but hostname resolution fails: investigate DNS.

**Best practice:** Isolate the failure layer before changing network settings.

---

## Scenario 2 — DNS Resolution Failure

**Reported symptom:** A user can reach an external IP address but cannot access websites using hostnames.

**Investigation sequence:**

1. Run `ipconfig /all` to identify configured DNS servers.
2. Run `nslookup google.com` to test the configured DNS resolver.
3. Run `nslookup google.com 1.1.1.1` to compare against an independent DNS resolver.
4. Run `ipconfig /displaydns` to inspect cached records.
5. If appropriate, run `ipconfig /flushdns` and repeat the lookup.

**Interpretation:**

- Configured DNS fails but an independent resolver succeeds: investigate the configured DNS service or network DNS policy.
- Both resolvers fail: investigate broader connectivity or DNS traffic restrictions.
- Resolution succeeds after flushing the cache: a stale or problematic cached record may have contributed.

**Best practice:** Compare DNS resolution with direct IP connectivity before changing DNS settings.

---

## Scenario 3 — DHCP Address or Lease Problem

**Reported symptom:** A workstation has an unexpected IP configuration or cannot communicate correctly on the network.

**Investigation sequence:**

1. Run `ipconfig /all` to inspect DHCP status, assigned address, lease information and DHCP server.
2. Check whether the address is valid for the expected subnet.
3. Run `ipconfig /renew "WiFi"` to request a lease renewal on the specified adapter.
4. Run `ipconfig /all` again to inspect the resulting configuration.

**Interpretation:**

- An address in the 169.254.0.0/16 range may indicate that the client could not obtain an IPv4 lease from DHCP.
- A successful renewal with unchanged addressing can be normal when the existing lease remains valid.
- Failure to renew may require investigation of DHCP availability, network access and adapter state.

**Best practice:** Check the adapter and DHCP configuration before assuming the DHCP server is faulty.

---

## Scenario 4 — Application Cannot Connect to a Server

**Reported symptom:** General internet access works, but a particular application or website cannot establish a connection.

**Investigation sequence:**

1. Run `Resolve-DnsName` against the destination hostname.
2. Run `Test-NetConnection server.example.com -Port 443` (substitute the actual destination).
3. If relevant, test the required application port.
4. Run `tracert` to investigate the network path.

**Interpretation:**

- DNS resolution fails: investigate name resolution.
- DNS succeeds but TCP connectivity fails: investigate firewall rules, server availability, routing and whether the service is listening.
- TCP connectivity succeeds: investigate application-level issues, authentication, TLS and service configuration.

**Best practice:** A successful ping does not prove that an application port is accessible. Test the actual TCP port required by the service.

---

## Scenario 5 — Unexpected Network Routing or Connectivity

**Reported symptom:** Traffic takes an unexpected path or a destination cannot be reached.

**Investigation sequence:**

1. Run `route print` to inspect IPv4 and IPv6 routing tables.
2. Identify the default route and relevant destination-specific routes.
3. Apply the longest-prefix-match principle when assessing route selection.
4. Use `tracert` to examine the path towards the destination.
5. Use `ping` to compare local and external connectivity.

**Interpretation:**

- An unexpected or missing route may explain why traffic is sent towards the wrong gateway.
- Timeouts at intermediate traceroute hops do not automatically indicate packet loss affecting the final destination. Routers may simply decline to respond to traceroute probes.
- A successful trace to the destination provides evidence of end-to-end reachability at the time of testing.

**Best practice:** Examine the routing table alongside traceroute results rather than interpreting individual hops in isolation.

---

## Troubleshooting Methodology

The scenarios follow a structured fault-isolation approach:

1. Identify and define the reported symptom.
2. Establish the current network configuration.
3. Test connectivity at progressively higher network layers.
4. Compare expected and observed results.
5. Identify the most likely fault domain.
6. Apply a controlled corrective action where appropriate.
7. Retest and document the outcome.

This approach reflects practical helpdesk, desktop support and network administration workflows.

