/*
*   Série de vídeos sobre server sockets: https://www.youtube.com/watch?v=BqBKEXLqdvI
*/
import java.io.DataInputStream;
import java.net.*;  //Importa tudo com o ServerSocket junto

public class Main{
    private Socket socket               = null;
    private ServerSocket serverSocket   = null;
    private DataInputStream inStream    = null;
    public void SocketStart(int porta){
        try{
            serverSocket = new ServerSocket(porta);
            System.out.println("Servidor iniciado...");
            System.out.println("Aguardando client...");
            socket = serverSocket.accept();
            System.out.println("Client aceito!");

        
        } catch(Exception exc){exc.printStackTrace();}
    }
}