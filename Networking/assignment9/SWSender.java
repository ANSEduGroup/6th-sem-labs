import java.io.*;
import java.net.*;
public class SWSender {
	public static void main(String[] args) throws IOException {
		int SWS = 8;
		int LAR = 0;
		int LFS = 0;

		ServerSocket ss = new ServerSocket(5050);
		Socket s = ss.accept();

		System.out.println("Type your msg ::: ");

		BufferedReader dis = new BufferedReader(new InputStreamReader(System.in));
		PrintStream p = new PrintStream(s.getOutputStream());

		while(true) {
			int i = 0, j = 0;
			//new BufferedReader(new InputStreamReader(System.in));
			String t = dis.readLine();

			if(t.trim().toLowerCase().equals("quit")) {
				p.println(t);
				System.exit(0);
			}

			char c[] = new char[100];
			c = t.toCharArray();
			int sent = 1;

			while(i < t.length()) {
				while(i < t.length() && i < SWS*sent) {
					if((LFS - LAR) <= SWS) {
						p.println(c[i]);
						LFS ++;
									System.out.println("sent = " + c[i++] + "Successfully");
					}
				}
				while(j < t.length() && j < SWS*sent) {
					String t1 = dis.readLine();
					System.out.println(t1);

					j++;
					LAR++;
				}
				sent++;
				System.out.println();
			}
		}
	}
}
