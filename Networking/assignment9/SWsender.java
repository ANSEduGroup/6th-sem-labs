import java.io.*;
import java.net.*;
public class SWsender
{
public static void main(String args[])throws IOException
{
int SWS=8;
int LAR=0;
int LFS=0;
ServerSocket ss=new ServerSocket(8080);
Socket s=ss.accept();
//t();
System.out.println("Type your Message...");
BufferedReader dis =new BufferedReader(new InputStreamReader(s.getInputStream()));
//DataInputStream dis=new DataInputStream(s.getInputStream());
PrintStream p=new PrintStream(s.getOutputStream());
while(true)
{
int i=0,j=0;
BufferedReader br =new BufferedReader(new InputStreamReader(System.in));
//DataInputStream in=new DataInputStream(System.in);
  String t=br.readLine();
//String t=new DataInputStream(System.in).readLine();
if(t.trim().toLowerCase().equals("quit"))
{
p.println(t);
System.exit(0);
}
char c[]=new char[100];
c=t.toCharArray();
int sent=1;
while(i<t.length())
{
while(i<t.length()&&i<SWS*sent)
{
if(LFS
-
LAR<=SWS)
{
p
.println(c[i]);
LFS++;
System.out.println("sent= " +c[i++]+ " Successfully");
}
}
while(j<t.length()&&j<SWS*sent)
{
String t1=dis.readLine();
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

