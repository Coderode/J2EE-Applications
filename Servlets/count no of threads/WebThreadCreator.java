// Java code for thread creation by extending 
// the Thread class 
import java.io.IOException;
class MultithreadingDemo extends Thread 
{ 
    public void run() 
    { 
        try
        { 
           Runtime rt=Runtime.getRuntime();
		   String url="http://localhost:7001/threadcount/threads";
		   rt.exec("rundll32 url.dll,FileProtocolHandler "+url);
        } 
        catch (Exception e) 
        { 
            // Throwing an exception 
            //System.out.println ("Exception is caught"); 
        } 
    } 
} 
  
// Main Class 
public class WebThreadCreator 
{ 
    public static void main(String[] args) 
    { 
        int n = 8; // Number of threads 
        for (int i=0; i<n; i++) 
        { 
            MultithreadingDemo object = new MultithreadingDemo(); 
            object.start(); 
        } 
    } 
} 