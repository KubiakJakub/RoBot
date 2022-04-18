using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Threading;

namespace RoBot_App
{
    internal class RoBotServer
    {
        public event MessageEventHandler Message;
        public delegate void MessageEventHandler(RoBotServer sender, string Data);

        //Servel Control
        public IPAddress ServerIP = IPAddress.Parse("192.168.1.120"); // computer internal ip adress
        public int ServerPort = 8080;
        public TcpListener myserver;

        public Thread Comthred;
        public bool IsLisening = true;

        // Clients
        private TcpClient client;
        private StreamReader clientdata;

        public RoBotServer()
        {
            myserver = new TcpListener(ServerIP, ServerPort);
            myserver.Start();

            Comthred = new Thread(new ThreadStart(Hearing));
            Comthred.Start();
        }

        // Listening ingormation
        private void Hearing()
        {
            while (!IsLisening == false)
            {
                if (myserver.Pending() == true)
                {
                    client = myserver.AcceptTcpClient();
                    clientdata = new StreamReader(client.GetStream());
                }

                try
                {
                    Message?.Invoke(this, clientdata.ReadLine());
                }
                catch (Exception ex)
                {

                }
                Thread.Sleep(10);
            }
        }
    }
}
