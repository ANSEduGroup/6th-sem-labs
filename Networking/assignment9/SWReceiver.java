import java.io.*;
import java.net.*;
public class SWReceiver
{
	public static void main(String args[])throws IOException
	{
		int rws=8;
		int laf=0;
		int lfr=0;
		InetAddress obj=InetAddress.getLocalHost();
		Socket s= new Socket(obj,5050);
		BufferedReader dis=new BufferedReader(new InputStreamReader(s.getInputStream()));
		PrintStream p=new PrintStream(s.getOutputStream());
		while(true)
		{
			int i=0;
			while(i<rws)
			{
				String str;
				if(laf-lfr<=rws)
				{
					str=dis.readLine();
					if(str.equals("Quit"))
						System.exit(0);
					System.out.println("Received"+str+"successfully");
					lfr++;
					p.println("Acknowledgement for"+str);
					laf++;
				}
				i++;
			}
			System.out.println();
		}
	}
}
