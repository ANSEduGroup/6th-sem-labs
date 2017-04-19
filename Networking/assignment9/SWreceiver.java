import java.io.*;
import java.net.*;
public class SWreceiver
{
public static void main(String args[])throws IOException
{
int RWS=8;
int LAF=0;
int LFR=0;
InetAddress obj=InetAddress.getLocalHost();
Socket s=new Socket(obj,8080);
BufferedReader dis =new BufferedReader(new InputStreamReader(s.getInputStream()));
//DataInputStream dis=new DataInputStream(s.getInputStream());
PrintStream p=new PrintStream(s.getOutputStream());
while(true)
{
int i=0;
while(i<RWS)
{
String t;
if(LAF-LFR<=RWS)
{
t=dis.readLine();
if(t.equals("QUIT"))
System.exit(0);
System.out.println("received " +t+ " Successfully");
LFR++;
p.println("Acknowledgement for " +t);
LAF++;
}
i++;
}
System.out.println();
}
}
}
