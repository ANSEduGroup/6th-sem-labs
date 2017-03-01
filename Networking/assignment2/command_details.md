<h1 align="center">Assignment 2</h1>
<h2 align="center">Brief Details of Basic Commands in Networking</h2>

## ipconfig
**Command Details** - As per Microsoft's Documentation, `ipconfig` is a command-line tool that display's the current configuration of the installed IP stack on a network computer.

The command can be used with the `/all` switch to display a details report of the configuration of all the interfaces, including any WAN miniports used for remote access or VPN.

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

**Output of the command `ipconfig /all`:**
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

## ping
**Command Details -** Ping is one of the primary tools for troubleshooting IP-level connectivity. Ping also allows the users to specify the size of packets to use (default is 32 bytes).

If pinged by name, `ping` first attempts to resolve the name to an address through a DNS server, then attempts a local broadcast. 
**Syntax for the `ping` command** is `ping www.example.com` or `ping xxx.xxx.xxx.xxx` where `xxx.xxx.xxx.xxx` is the target IP for pinging.

**Sample output of `ping 8.8.8.8`**
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
**Sample output of `ping aurghyadip.me`**
```
C:\Users\Aurghya>ping aurghyadip.me

Pinging aurghyadip.me [139.59.39.34] with 32 bytes of data:
Reply from 139.59.39.34: bytes=32 time=35ms TTL=50
Reply from 139.59.39.34: bytes=32 time=34ms TTL=50
Reply from 139.59.39.34: bytes=32 time=35ms TTL=50
Reply from 139.59.39.34: bytes=32 time=34ms TTL=50

Ping statistics for 139.59.39.34:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 34ms, Maximum = 35ms, Average = 34ms
```
## tracert
**Command Details -** `tracert` is a route tracing utility that display a list of near-router side interfaces of the routers along the path between a source host and a destination. `tracert` uses the IP TTL field ICMP Echo Request and ICMP Time Exchange messeges to determine the path from a source to a destination through an IP internetwork.

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
  4     3 ms     3 ms     4 ms  static-189.112.142.202.sitibroadband.in[202.142.112.189]
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

## pathping
**Command Details -** The `pathping` tool is also a route tracing tool that combines the features of `ping` and `tracert` with additional extra information that is different from those two tools. `pathping` sends packets to each router on the way to a final destinatin over a period of time, and then computes results based on the packets returned from each hop(node). Since `pathping` shows the degree of packet loss at any given router or link, it is possible to pinpoint which router or link is causing problems on the network. 

**Syntax for `pathping`** is `pathping www.example.com` or `pathping xxx.xxx.xxx.xxx` where `xxx.xxx.xxx.xxx` is the target IP address.

**Sample output of `pathping`**
```
C:\Users\Aurghya>pathping aurghyadip.me

Tracing route to aurghyadip.me [139.59.39.34]
over a maximum of 30 hops:
  0  Aurghyadip [192.168.0.101]
  1  192.168.0.1
  2  10.10.49.129
  3  172.16.0.1
  4  static-189.112.142.202.sitibroadband.in [202.142.112.189]
  5  172.31.1.42
  6  172.31.1.77
  7  172.31.1.29
  8  172.31.1.57
  9  172.31.1.1
 10  172.31.1.66
 11  220.225.1.66
 12     *     115.255.252.189
 13  124.124.67.153
 14     *        *        *
Computing statistics for 325 seconds...
            Source to Here   This Node/Link
Hop  RTT    Lost/Sent = Pct  Lost/Sent = Pct  Address
  0                                           Aurghyadip [192.168.0.101]
                                0/ 100 =  0%   |
  1    0ms     0/ 100 =  0%     0/ 100 =  0%  192.168.0.1
                                0/ 100 =  0%   |
  2    2ms     0/ 100 =  0%     0/ 100 =  0%  10.10.49.129
                                0/ 100 =  0%   |
  3    1ms     0/ 100 =  0%     0/ 100 =  0%  172.16.0.1
                                0/ 100 =  0%   |
  4    3ms     0/ 100 =  0%     0/ 100 =  0%  static-189.112.142.202.sitibroadband.in[202.142.112.189]
                                0/ 100 =  0%   |
  5    3ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.42
                                0/ 100 =  0%   |
  6    3ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.77
                                0/ 100 =  0%   |
  7    3ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.29
                                0/ 100 =  0%   |
  8    2ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.57
                                0/ 100 =  0%   |
  9    2ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.1
                                0/ 100 =  0%   |
 10    2ms     0/ 100 =  0%     0/ 100 =  0%  172.31.1.66
                                0/ 100 =  0%   |
 11   33ms     0/ 100 =  0%     0/ 100 =  0%  220.225.1.66
                                0/ 100 =  0%   |
 12  ---     100/ 100 =100%   100/ 100 =100%  115.255.252.189
                                0/ 100 =  0%   |
 13   34ms     0/ 100 =  0%     0/ 100 =  0%  124.124.67.153

Trace complete.

```

## nslookup
**Command Details -** `nslookup` is a truobleshooting tool for DNS problems, such as host name resolution. `nslookup` uses the domain name devolution method. `nslookup`'s debug mode is useful for troubleshooting feature. We can set the local computer into debug mode by using `set debug` or `set d2` when in `nslookup` prompt. 

**Syntax for `nslookup`** is `nslookup` for starting the prompt or `nslookup example.com` for direct resolution of `example.com`.

**Sample output**
```
C:\Users\Aurghya>nslookup aurghyadip.me
Server:  UnKnown
Address:  172.16.0.1

Non-authoritative answer:
Name:    aurghyadip.me
Address:  139.59.39.34

```

**With `set debug`**
```

C:\Users\Aurghya>nslookup
Default Server:  UnKnown
Address:  172.16.0.1

> set debug
> aurghyadip.me
Server:  UnKnown
Address:  172.16.0.1

------------
Got answer:
    HEADER:
        opcode = QUERY, id = 2, rcode = NOERROR
        header flags:  response, want recursion, recursion avail.
        questions = 1,  answers = 1,  authority records = 3,  additional = 6

    QUESTIONS:
        aurghyadip.me, type = A, class = IN
    ANSWERS:
    ->  aurghyadip.me
        internet address = 139.59.39.34
        ttl = 2325 (38 mins 45 secs)
    AUTHORITY RECORDS:
    ->  aurghyadip.me
        nameserver = ns1.digitalocean.com
        ttl = 85125 (23 hours 38 mins 45 secs)
    ->  aurghyadip.me
        nameserver = ns2.digitalocean.com
        ttl = 85125 (23 hours 38 mins 45 secs)
    ->  aurghyadip.me
        nameserver = ns3.digitalocean.com
        ttl = 85125 (23 hours 38 mins 45 secs)
    ADDITIONAL RECORDS:
    ->  ns1.digitalocean.com
        internet address = 173.245.58.51
        ttl = 66114 (18 hours 21 mins 54 secs)
    ->  ns1.digitalocean.com
        AAAA IPv6 address = 2400:cb00:2049:1::adf5:3a33
        ttl = 66114 (18 hours 21 mins 54 secs)
    ->  ns2.digitalocean.com
        internet address = 173.245.59.41
        ttl = 66114 (18 hours 21 mins 54 secs)
    ->  ns2.digitalocean.com
        AAAA IPv6 address = 2400:cb00:2049:1::adf5:3b29
        ttl = 66114 (18 hours 21 mins 54 secs)
    ->  ns3.digitalocean.com
        internet address = 198.41.222.173
        ttl = 66114 (18 hours 21 mins 54 secs)
    ->  ns3.digitalocean.com
        AAAA IPv6 address = 2400:cb00:2049:1::c629:dead
        ttl = 66114 (18 hours 21 mins 54 secs)

------------
Non-authoritative answer:
------------
Got answer:
    HEADER:
        opcode = QUERY, id = 3, rcode = NOERROR
        header flags:  response, want recursion, recursion avail.
        questions = 1,  answers = 0,  authority records = 1,  additional = 0

    QUESTIONS:
        aurghyadip.me, type = AAAA, class = IN
    AUTHORITY RECORDS:
    ->  aurghyadip.me
        ttl = 1401 (23 mins 21 secs)
        primary name server = ns1.digitalocean.com
        responsible mail addr = hostmaster.aurghyadip.me
        serial  = 1485376409
        refresh = 10800 (3 hours)
        retry   = 3600 (1 hour)
        expire  = 604800 (7 days)
        default TTL = 1800 (30 mins)

------------
Name:    aurghyadip.me
Address:  139.59.39.34
```


## Conclusion
The above commands are for Windows based platforms only. For linux, although some commands are same like `ping` and `nslookup`, but the others do not share the same commands. The equivalent of `ipconfig` is `ifconfig` and there are some more powerful tools available such as **MTR** or **My tarceroute**. `mtr` is basically a combination of `ping`, `pathping` and `tracert`. It's a powerful tool when analyzing or troubleshooting a network.

**Sample output for `mtr aurghyadip.me`**
```
                                 My traceroute  [v0.87]
skysword (0.0.0.0)                                             Fri Feb 17 01:53:50 2017
Keys:  Help   Display mode   Restart statistics   Order of fields   quit
                                               Packets               Pings
 Host                                        Loss%   Snt   Last   Avg  Best  Wrst StDev
 1. 192.168.0.1                               0.0%     2    0.2   0.2   0.2   0.2   0.0
 2. 10.10.49.129                              0.0%     2    2.8   2.5   2.3   2.8   0.0
 3. 172.16.0.1                                0.0%     2    1.6   1.4   1.2   1.6   0.0
 4. static-189.112.142.202.sitibroadband.in   0.0%     2    1.9   2.0   1.9   2.2   0.0
 5. 172.31.1.42                               0.0%     2    2.7   2.7   2.6   2.7   0.0
 6. 172.31.1.77                               0.0%     2    4.1   4.1   4.0   4.1   0.0
 7. 172.31.1.29                               0.0%     2    3.2   3.2   3.2   3.3   0.0
 8. 172.31.1.57                               0.0%     2    2.2   2.5   2.2   2.8   0.0
 9. 172.31.1.1                                0.0%     2    2.8   2.9   2.8   3.0   0.0
10. 172.31.1.66                               0.0%     2    2.5   2.3   2.1   2.5   0.0
11. 220.225.1.66                             50.0%     2   35.4  35.4  35.4  35.4   0.0
12. ???
13. 124.124.67.153                            0.0%     1   34.7  34.7  34.7  34.7   0.0
14. ???
15. 139.59.39.34                              0.0%     1   34.8  34.8  34.8  34.8   0.0
```
Also, networking tools are not limited to these, the library of tools is ever growing and our fundamental target is to keep up with it and use as much of it as possible effectively.
