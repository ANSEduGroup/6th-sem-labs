<h1 align="center">Assignment 3</h1>
<h2 align="center">Simple TCP Server and Client using Java</h2>

## Algorithm


### TCP Server

```java
import java.io.*;
import java.net.*;

class TCPServer {
	public static void main(String args[]) throws IOException {
		String clientSentence ;
		String capitalizedSentence;
		ServerSocket ws = new ServerSocket(1234);
		ws.setSoTimeout(15000); // Setting the timeout time to 15 seconds.

		boolean connection = true; // Connection flag.

		while(connection)
		{
			try {
				Socket cs = ws.accept();
				System.out.println("Connected to Client"); // Log if connected.
				BufferedReader inFromClient = new BufferedReader(new InputStreamReader(cs.getInputStream()));
				DataOutputStream outToClient = new DataOutputStream(cs.getOutputStream());
				clientSentence = inFromClient.readLine();
				capitalizedSentence = clientSentence.toUpperCase() + "\n";
				outToClient.writeBytes(capitalizedSentence);
				/*
				// Logging if the last line is actually executing
				// in case of a fault.
				System.out.println("Msg sent");
				*/
			} catch (SocketTimeoutException e) {
				System.err.println("Server timed out." + "\n" + e.getMessage());
				connection = false;
			}
		}
	}
}
```

### TCP Client

```java
import java.io.*;
import java.net.*;

class TCPClient {
	public static void main(String args[]) throws IOException {
		String sentence;
		String modifiedSentence;
		BufferedReader inFromUser = new BufferedReader(new InputStreamReader(System.in));
		try {
			Socket cs = new Socket("localhost",1234); // This can throw exceptions
			DataOutputStream outToServer = new DataOutputStream(cs.getOutputStream());
			BufferedReader inFromServer = new BufferedReader(new InputStreamReader(cs.getInputStream()));
			sentence = inFromUser.readLine();
			outToServer.writeBytes(sentence + '\n');
			modifiedSentence = inFromServer.readLine();
			System.out.println("Output from Server : " + modifiedSentence);
			cs.close();
		} catch (ConnectException e) {
			System.err.println("Exception:" + "\n" + e.getMessage());
		}
	}
}
```