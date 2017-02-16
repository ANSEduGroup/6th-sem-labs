# Details of Basic Commands in Networking

## `ipconfig`
**Command Details** - As per Microsoft's Documentation, `ipconfig` is a command-line tool that display's the current configuration of the installed IP stack on a network computer.

The command can be used with the `\all` switch to display a details report of the configuration of all the interfaces, including any WAN miniports used for remote access or VPN.

**Output of the command `ipconfig`:**
```
Microsoft Windows [Version 6.3.9600]
(c) 2013 Microsoft Corporation. All rights reserved.

C:\Users\Aurghya>ipconfig

Windows IP Configuration


Ethernet adapter Ethernet:

   Connection-specific DNS Suffix  . :
   Link-local IPv6 Address . . . . . : fe80::41bc:1ebe:c52e:9b15%3
   IPv4 Address. . . . . . . . . . . : 192.168.0.101
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 192.168.0.1

Tunnel adapter isatap.{A303CDB2-51B7-4714-99FD-FE269865627E}:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :

Tunnel adapter Teredo Tunneling Pseudo-Interface:

   Connection-specific DNS Suffix  . :
   IPv6 Address. . . . . . . . . . . : 2001:0:338c:24f4:4dc:4b85:3571:b311
   Link-local IPv6 Address . . . . . : fe80::4dc:4b85:3571:b311%5
   Default Gateway . . . . . . . . . : ::
```

**Output of the command `ipconfig \all`:**
```
C:\Users\Aurghya>ipconfig /all

Windows IP Configuration

   Host Name . . . . . . . . . . . . : Aurghyadip
   Primary Dns Suffix  . . . . . . . :
   Node Type . . . . . . . . . . . . : Hybrid
   IP Routing Enabled. . . . . . . . : No
   WINS Proxy Enabled. . . . . . . . : No

Ethernet adapter Ethernet:

   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Realtek PCIe FE Family Controller
   Physical Address. . . . . . . . . : 00-E0-4C-56-03-96
   DHCP Enabled. . . . . . . . . . . : Yes
   Autoconfiguration Enabled . . . . : Yes
   Link-local IPv6 Address . . . . . : fe80::41bc:1ebe:c52e:9b15%3(Preferred)
   IPv4 Address. . . . . . . . . . . : 192.168.0.101(Preferred)
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Lease Obtained. . . . . . . . . . : 15 February 2017 17:57:52
   Lease Expires . . . . . . . . . . : 15 February 2017 20:59:14
   Default Gateway . . . . . . . . . : 192.168.0.1
   DHCP Server . . . . . . . . . . . : 192.168.0.1
   DHCPv6 IAID . . . . . . . . . . . : 50389068
   DHCPv6 Client DUID. . . . . . . . : 00-01-00-01-1F-28-5C-EC-00-E0-4C-56-03-96

   DNS Servers . . . . . . . . . . . : 172.16.0.1
                                       8.8.8.8
   NetBIOS over Tcpip. . . . . . . . : Enabled

Tunnel adapter isatap.{A303CDB2-51B7-4714-99FD-FE269865627E}:

   Media State . . . . . . . . . . . : Media disconnected
   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Microsoft ISATAP Adapter
   Physical Address. . . . . . . . . : 00-00-00-00-00-00-00-E0
   DHCP Enabled. . . . . . . . . . . : No
   Autoconfiguration Enabled . . . . : Yes

Tunnel adapter Teredo Tunneling Pseudo-Interface:

   Connection-specific DNS Suffix  . :
   Description . . . . . . . . . . . : Teredo Tunneling Pseudo-Interface
   Physical Address. . . . . . . . . : 00-00-00-00-00-00-00-E0
   DHCP Enabled. . . . . . . . . . . : No
   Autoconfiguration Enabled . . . . : Yes
   IPv6 Address. . . . . . . . . . . : 2001:0:338c:24f4:4dc:4b85:3571:b311(Preferred)
   Link-local IPv6 Address . . . . . : fe80::4dc:4b85:3571:b311%5(Preferred)
   Default Gateway . . . . . . . . . : ::
   DHCPv6 IAID . . . . . . . . . . . : 134217728
   DHCPv6 Client DUID. . . . . . . . : 00-01-00-01-1F-28-5C-EC-00-E0-4C-56-03-96

   NetBIOS over Tcpip. . . . . . . . : Disabled
```

## `ping`
Ping is one of the primary tools for troubleshooting IP-level connectivity. Ping also allows the users to specify the size of packets to use (default is 32 bytes).

If pinged by name, `ping` first attempts to resolve the name to an address through a DNS server, then attempts a local broadcast. 
**Syntax for the ping command -** `ping xxx.xxx.xxx.xxx` where `xxx.xxx.xxx.xxx` is the target IP for pinging.

Here's the output of a simple `ping` command in windows.
```
Microsoft Windows [Version 6.3.9600]
(c) 2013 Microsoft Corporation. All rights reserved.

C:\Users\Aurghya>ping 8.8.8.8

Pinging 8.8.8.8 with 32 bytes of data:
Reply from 8.8.8.8: bytes=32 time=57ms TTL=53
Reply from 8.8.8.8: bytes=32 time=57ms TTL=53
Reply from 8.8.8.8: bytes=32 time=57ms TTL=53
Reply from 8.8.8.8: bytes=32 time=56ms TTL=53

Ping statistics for 8.8.8.8:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 56ms, Maximum = 57ms, Average = 56ms
```

## `tracert`
`tracert` is a route tracing utility that display a list of near-router side interfaces of the routers along the path between a source host and a destination. `tracert` uses the IP TTL field ICMP Echo Request and ICMP Time Exchange messeges to determine the path from a source to a destination through an IP internetwork.

**Syntax for `tracert` command** is `tracert www.example.com` or `tracert xxx.xxx.xxx.xxx` where `xxx.xxx.xxx.xxx` is a valid IP address.

**Sample output for the `tracert` command**
```
Microsoft Windows [Version 6.3.9600]
(c) 2013 Microsoft Corporation. All rights reserved.

C:\Users\Aurghya>tracert 8.8.8.8

Tracing route to google-public-dns-a.google.com [8.8.8.8]
over a maximum of 30 hops:

  1    <1 ms    <1 ms    <1 ms  192.168.0.1
  2     3 ms     2 ms     1 ms  10.10.49.129
  3     2 ms     1 ms    <1 ms  172.16.0.1
  4     3 ms     3 ms     4 ms  static-189.112.142.202.sitibroadband.in [202.142.112.189]
  5     3 ms     3 ms     3 ms  172.31.1.42
  6     3 ms     3 ms     3 ms  172.31.1.77
  7     2 ms     3 ms     2 ms  172.31.1.29
  8     3 ms     3 ms     2 ms  172.31.1.57
  9     2 ms     2 ms     2 ms  172.31.1.1
 10     2 ms     2 ms     1 ms  172.31.1.66
 11    65 ms    64 ms    64 ms  209.85.173.49
 12    64 ms    64 ms    64 ms  216.239.57.217
 13    64 ms    64 ms    65 ms  209.85.254.187
 14    64 ms    64 ms    64 ms  google-public-dns-a.google.com [8.8.8.8]

Trace complete.

```

## `pathping`

## `nslookup`