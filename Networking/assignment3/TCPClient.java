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
