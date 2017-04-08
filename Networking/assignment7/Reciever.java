import java.io.*;
import java.net.*;

public class Reciever
{
	ServerSocket RecieverSocket;
	Socket connection = null;
	ObjectOutputStream out;
	ObjectInputStream in;
	String message,checksum;
	Reciever(){}
	void run()
	{
		try
		{
			BufferedReader br=new BufferedReader(new InputStreamReader(System.in));

			RecieverSocket = new ServerSocket(2004, 10);

			System.out.println("Waiting for connection");
			connection = RecieverSocket.accept();
			senderName = conncetion.getInetAddress().getHostName();
			System.out.println("Connection received from " + senderName);

			out = new ObjectOutputStream(connection.getOutputStream());
			out.flush();
			in = new ObjectInputStream(connection.getInputStream());
			sendMessage("Connection successful ...");

			try
			{
				message = (String)in.readObject();
				System.out.println("client>" + message);
				checksum=checksum(message);
				message=(checksum.equals("000"))?"correct":"corrupted";
				sendMessage(message);
			}
			catch(ClassNotFoundException classnot)
			{
				System.err.println("Data received in unknown format");
			}

		}
		catch(IOException ioException)
		{
			ioException.printStackTrace();
		}

		finally
		{
			try
			{
				in.close();
				out.close();
				RecieverSocket.close();
			}
			catch(IOException ioException)
			{
				ioException.printStackTrace();
			}
		}
	}

	String checksum(String str)
	{
		int[] a=new int[20];
		int n=str.length();

		for(int i=0;i<n;i++)
		{
			a[i]=Integer.valueOf(str.substring(i,i+1));
		}
		
		for(int i=0;i<n-3;i++) 
		{
			if(a[i]==1) 
			{
				a[i]=(a[i]==1)?0:1;
				a[i+1]=(a[i+1]==1)?1:0;
				a[i+2]=(a[i+2]==1)?0:1;
				a[i+3]=(a[i+3]==1)?0:1;
			}
		}

		str=String.valueOf(a[n-3]);
		str=str.concat(String.valueOf(a[n-2]));
		str=str.concat(String.valueOf(a[n-1]));
		return str;
	}

	void sendMessage(String msg)
	{
		try
		{
			out.writeObject(msg);
			out.flush();
			System.out.println("server>" + msg);
		}
		catch(IOException ioException)
		{
			ioException.printStackTrace();
		}
	}

	public static void main(String args[])
	{
		Reciever server = new Reciever();
	
		while(true)
		{
			server.run();
		}
	}
}
// This is just an useless comment!!
