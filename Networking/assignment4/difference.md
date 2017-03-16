<h1 align="center">Assignment 4</h1>

### Difference Between TCP and UDP

|Topic|TCP|UDP|
|:-----:|:---|:---|
|**Definitions**|TCP (Transmission Control Protocol) is a connection oriented stream over an IP network. It guarantees that all sent packets will reach the destination in the correct order. This imply the use of acknowledgement packets sent back to the sender, and automatic retransmission, causing additional delays and a general less efficient transmission than UDP.|UDP (User Datagram Protocol) is a connection-less protocol. Communication is datagram oriented. The integrity is guaranteed only on the single datagram. Datagrams reach destination and can arrive out of order or don't arrive at all. It is more efficient than TCP because it uses non ACK. It's generally used for real time communication, where a little percentage of packet loss rate is preferable to the overhead of a TCP connection.|
|**Function**|As a message makes its way accross the internet from one computer to another. This is connection Based|UDP is also a protocol used in message transport or transfer. This is not connection based which means that one program can send a load of packets to another and that would be the end of the relationship.|
|**Usage**|TCP is suited for applications that require high reliability, and transmission time is relatively less critical.|UDP is suitable for applications that need fast, efficient transmission, such as games. UDP's stateless nature is also useful for servers that answer small queries from huge number of clients.|
|**Used By**|HTTP, HTTPS, FTP, SMTP, Telnet|DNS, DHCP, TFTP, SMNP, RIP, VOIP|
|**Ordering of Data Packets**|TCP rearranges data packets in the order specified.|UDP has no inherent order as all packets are independent of each other. If ordering is required, it has to be managed by application layer.|
|**Speed of Transfer**|The speed for TCP is slower than UDP|UDP is faster because error recovery is not attempted. It is a "best effort" protocol.|
|**Reliability**|There is absolute guarantee that the data transferred remains intact and arrives in the same order in which it was sent.|There is no guarantee that the messages or packets sent would reach at all.|
|**Header Size**|TCP header size is 20 bytes.|UDP Header size is 8 bytes.|
|**Streaming of Data**|Data is read as a byte stream, no distinguishing indications are transmitted to signal message bounderies.|Packets are sent individually and are checked for integrity only if they arrive.|
|**Weight**|TCP is heavyweight. It requires three packets to set up a socket connection, before any user data can be sent.|UDP is lightweight. There is no ordering of messages, no tracking connections, etc. It is small transport layer designed on top of IP.|
|**Data Flow Control and Error Checking**|TCP handles reliability and congestion control. Also TCP Does error checking and error recovery.|UDP does not have an option for flow control. UDP does error checking but simply discards erroneous packets. Error recovery is not attempted.|
|**Acknowledgement**|Yes, segments.|No|
