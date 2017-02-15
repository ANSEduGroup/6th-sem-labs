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
   IPv6 Address. . . . . . . . . . . : 2001:0:338c:24f4:4dc:4b85:3571:b311(Prefe
rred)
   Link-local IPv6 Address . . . . . : fe80::4dc:4b85:3571:b311%5(Preferred)
   Default Gateway . . . . . . . . . : ::
   DHCPv6 IAID . . . . . . . . . . . : 134217728
   DHCPv6 Client DUID. . . . . . . . : 00-01-00-01-1F-28-5C-EC-00-E0-4C-56-03-96

   NetBIOS over Tcpip. . . . . . . . : Disabled
```

## `ping`

## `tracert`

## `pathping`

## `nslookup`