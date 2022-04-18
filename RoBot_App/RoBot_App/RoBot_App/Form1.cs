using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;

namespace RoBot_App
{
    public partial class Form1 : Form
    {
        private RoBotServer Server;

        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            string StringHost;
            string StrIP;

            try
            {
                StringHost = System.Net.Dns.GetHostName();
                StrIP = Dns.GetHostByName(StringHost).AddressList[0].ToString();
                label2.Text = "Host Name:" + StringHost + "IP Address:" + StrIP;
            }
            catch (Exception ex)
            {

            }

            Server = new RoBotServer();

            try
            {
                richTextBox1.AppendText("-------- RoBot server starts -----");
            }catch (Exception ex)
            {

            }

            Server.Message += RecInfo;

        }

        private delegate void UpdateTextBox(RichTextBox Richbox1, string txt);
        private void UpdateText(RichTextBox Richbox1, string txt)
        {
            if (InvokeRequired)
            {
                Richbox1.Invoke(new UpdateTextBox(UpdateText), new object[] {richTextBox1, txt});
            }else if (txt != null)
            {
                Richbox1.AppendText(txt + "\n");
            }
        }

        private void RecInfo(RoBotServer sender, string data)
        {
            UpdateText(richTextBox1, data);
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            Server.IsLisening = false;
        }
    }
}
