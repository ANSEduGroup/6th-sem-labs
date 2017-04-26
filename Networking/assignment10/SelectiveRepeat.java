import java.io.*;
import java.lang.*;
public class SelectiveRepeat {
	int n;
	int r;

	public SelectiveRepeat() throws Exception {}
	int frame[] = new int[10];
	char ack[] = new char[10];
	BufferedReader br = new BufferedReader(new InputStreamReader(new DataInputStream(System.in)));

	public void trans() throws Exception {
		sender();
		recvfrm();
		resend();
		System.out.println("All packet sent successfully.");
	}
	int sender() throws Exception {
		int i;
		System.out.println("Enter total no. of packets:: ");
		n = Integer.parseInt(br.readLine());

		for(i = 0; i < n; i ++)
		{
			System.out.println("Enter data for packet " + i + " :: ");
			frame[i] = Integer.parseInt(br.readLine());
			ack[i] = 'y';
		}
		return 0;
	}
	void recvfrm() {
		int i;
		//rand() // not necessary


		r =(int)(Math.random()*n);
		//System.out.println("Value of r " + r); //not necessary
		ack[r] = 'n';
		for(i = 0; i < n; i ++ )
		{
			if((char)(ack[i]) == 'n')
				System.out.println("\nThe packet no " + r + " is not received.\n");
		}
	}

	void resend() throws Exception {
		System.out.println("\n Resending packet " + r + ".");
		Thread.sleep(20);
		ack[r] = 'y';
		System.out.println("The received packet is " + frame[r] + ".");
	}

	public static void main(String args[]) throws Exception {
		SelectiveRepeat  obSRA = new SelectiveRepeat();
		obSRA.trans();
	}
}
