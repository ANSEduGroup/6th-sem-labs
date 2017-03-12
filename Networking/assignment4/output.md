<h1 align="center">Assignment 4</h1>
<h2 align="center">Simple UDP Server and Client using Java</h2>

### Aim : IMPLEMENTATION OF ECHO SERVER SOCKET USING UDP DATAGRAM

### Abstract
- **UDP**: The User Datagram Protocol is the simpler of the two standards TCP/IP transport protocols. It is an end-to-end transport level protocol that adds only port addresses, checksum errors control, and length information to the data from the upper layer. The packet produced by the UDP is called a user datagram.

|TCP|UDP|
|---|---|
|TCP is a connection oriented stream over an IP network. It guarantees that all sent packets will reach the destination in the correct order. This imply the use of acknowledgement packets sent back to the sender, and automatic retransmission, causing additional delays and a general less efficient transmission than UDP.|UDP is a connection-less protocol. Communication is datagram oriented. The integrity is guaranteed only on the single datagram. Datagrams reach destination and can arrive out of order or don't arrive at all. It is more efficient than TCP because it uses non ACK. It's generally used for real time communication, where a little percentage of packet loss rate is preferable to the overhead of a TCP connection.|

- **ECHO Server** : An echo server is usually an application which is used to test if the connection between a client and a server is successful. It consists of a server which sends back whatever text the client sent.
Our goal is to create an echo server which recieves the text from the client, capitalizes it and then sends it back to the client.

### Algorithm
1. Create two programs, one for the server side (UDPServer.java) and another for the client side (UDPClient.java).
2. Create an instance of `DatagramSocket` & `DatagramPacket` in the server side.
3. Receive the packet from the client using `DatagramSocket`'s `receive` method.
4. Get data from `DatagramSocket` using `getData()` and print it.
5. Get the message using `getBytes()`.
6. Send the packet to the client using `send()` method of `DatagramSocket`.
7. Create instances of `DatagramSocket` and `DatagramPacket` in client side.
8. Take keyboard input from user in the client side using `BufferedReader`.
9. Send the message to the server using `send()` of `DatagramPacket`.
10. Receive message from server using `DatagramSocket`'s `receive()` method.
11. Print the message in the client side.
12. Close the connection using `close()` method of `DatagramSocket`.

### UDP Server

```java
import java.io.*;
import java.net.*;

class UDPServer {
   public static void main(String args[]) throws IOException {

      DatagramSocket serverSocket = new DatagramSocket(9876);
      byte[] receiveData = new byte[1024];
      byte[] sendData = new byte[1024];

      while(true) {
         DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);
         serverSocket.receive(receivePacket);
         String sentence = new String(receivePacket.getData());
         System.out.println("RECEIVED: " + sentence);
         InetAddress IPAddress = receivePacket.getAddress();
         int port = receivePacket.getPort();
         String capitalizedSentence = sentence.toUpperCase();
         sendData = capitalizedSentence.getBytes();
         DatagramPacket sendPacket =
         new DatagramPacket(sendData, sendData.length, IPAddress, port);
         serverSocket.send(sendPacket);
      }
   }
}
```

### UDP Client

```java
import java.io.*;
import java.net.*;

class UDPClient {
   public static void main(String args[]) throws Exception {

      BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
      DatagramSocket clientSocket = new DatagramSocket();
      InetAddress IPAddress = InetAddress.getByName("localhost");
      byte[] sendData = new byte[1024];
      byte[] receiveData = new byte[1024];

      String sentence = inFromUser.readLine();
      sendData = sentence.getBytes();
      DatagramPacket sendPacket = new DatagramPacket(sendData, sendData.length, IPAddress, 9876);

      clientSocket.send(sendPacket);
      DatagramPacket receivePacket = new DatagramPacket(receiveData, receiveData.length);

      clientSocket.receive(receivePacket);
      String modifiedSentence = new String(receivePacket.getData());

      System.out.println("SERVER SAYS:" + modifiedSentence);

      clientSocket.close();
   }
}
```
### Output
|UDP SERVER|UDP CLIENT|
|----------|----------|
|<img src="../assets/as4/UDPServer.png">|<img src="../assets/as4/UDPClient.png">
