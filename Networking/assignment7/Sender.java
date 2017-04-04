/*
    crc parity programm
    this is sender
    
    
    Generator is 1011


*/
import java.io.*;
import java.net.*;
public class Sender{
    Socket requestSocket;
    ObjectOutputStream out;
     ObjectInputStream in;
     String message;
    boolean check=true;
    Sender(){}
    void run()
    {
        try{
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            //1. creating a socket to connect to the server
            requestSocket = new Socket("localhost", 2004);
            System.out.println("Connected to localhost in port 2004");
            //2. get Input and Output streams
            out = new ObjectOutputStream(requestSocket.getOutputStream());
            out.flush();
            in = new ObjectInputStream(requestSocket.getInputStream());
            //3: Communicating with the server
            message = (String)in.readObject();
            System.out.println("server>" + message);
                    
            do{
                try{
                    System.out.println("Enter binary number to send:");
                    message = br.readLine();
                    if(checkbinary(message)){
                        check=false;
                        System.out.println("checksum >"+checksum(message.concat("000")) );
                        message=message.concat(checksum(message.concat("000")));
                        sendMessage(message);
                        }else{
                        System.out.println("Entered data is not in binary format.\n Re" );
                    }
                }
                catch(Exception classNot){
                    System.err.println("data received in unknown format"+classNot);
                }
            }while(check);
            try{
            System.out.println("Data sent" );
            message = (String)in.readObject();
            System.out.println("server>" + message);
            }catch(Exception e){}
                    
        }
        catch(UnknownHostException unknownHost){
            System.err.println("You are trying to connect to an unknown host!");
        }
        catch(IOException ioException){
            ioException.printStackTrace();
        }
        catch(Exception e){}
        finally{
            //4: Closing connection
            try{
                in.close();
                out.close();
                requestSocket.close();
            }
            catch(IOException ioException){
                ioException.printStackTrace();
            }
        }
    }
    boolean checkbinary(String str){
        int n=Integer.valueOf(str);
        int len=str.length();
        int sum=0;
        for(int i=0;i<len;i++){
            sum=n%10;
            if(sum>1) return false;
        }
        return true;
        
    }
    String checksum(String str){
        int[] a=new int[20];
        int n=str.length();
        for(int i=0;i<n;i++){
            a[i]=Integer.valueOf(str.substring(i,i+1));
        }
        for(int i=0;i<n-3;i++){
            if(a[i]==1){
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
        try{
            out.writeObject(msg);
            out.flush();
            System.out.println("client>" + msg);
        }
        catch(IOException ioException){
            ioException.printStackTrace();
        }
    }
    public static void main(String args[])
    {
        Sender client = new Sender();
        client.run();
    }
}