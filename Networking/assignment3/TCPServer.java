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
