using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DPFP;
using DPFP.Capture;
using DPFP.Verification;
using MySql.Data.MySqlClient;

namespace DigitalPersona_CSharp
{
    public partial class frmRead : Form, DPFP.Capture.EventHandler
    {
        private Capture Capturer;
        private Verification Verificator;


        public List<Template> FPTList = new List<DPFP.Template>();
        public List<string> OwnwerList = new List<string>();

        public frmRead()
        {
            InitializeComponent();
        }
        protected void Init()
        {
            Capturer = new Capture();                   // Create a capture operation.
            if (Capturer != null)
                Capturer.EventHandler = this;
            Verificator = new Verification();
        }
        protected void StartCapture()
        {
            if (Capturer != null)
                Capturer.StartCapture();
        }
        private void process(DPFP.Sample Sample)        {
            
            FeatureSet features = ExtractFeatures(Sample, DPFP.Processing.DataPurpose.Verification);
            CompareToTemplate(features);
        }
        private void CompareToTemplate(FeatureSet featuresets)
        {
            Verification.Result results = new Verification.Result();
            for (var i = 0; i <= FPTList.Count - 1; i++)
            {
                try
                {
                    if (featuresets != null)
                    {
                        Verificator.Verify(featuresets, FPTList[i], ref results);
                        if (results.Verified)
                        {
                            label2.Text= OwnwerList[i].ToString();
                            break;
                        }
                        else if (i == FPTList.Count - 1)
                        {
                            label2.Text = "< fingerprint not found >";
                            break;
                        }
                        else
                        {
                           // please wait
                            continue;
                        }
                    }
                }
                catch (Exception ex)
                {
                  
                }
            }
        }
        protected DPFP.FeatureSet ExtractFeatures(DPFP.Sample Sample, DPFP.Processing.DataPurpose Purpose)
        {
            DPFP.Processing.FeatureExtraction extractor = new DPFP.Processing.FeatureExtraction();    // Create a feature extractor
            DPFP.Capture.CaptureFeedback feedback = DPFP.Capture.CaptureFeedback.None;
            DPFP.FeatureSet features = new DPFP.FeatureSet();
            extractor.CreateFeatureSet(Sample, Purpose, ref feedback,ref  features); // TODO: return features as a result?
            if ((feedback == DPFP.Capture.CaptureFeedback.Good))
                return features;
            else
                return null/* TODO Change to default(_) if this is not a reference type */;
        }

        public void OnComplete(object Capture, string ReaderSerialNumber, Sample Sample)
        {
            //throw new NotImplementedException();
            process(Sample);
        }

        public void OnFingerGone(object Capture, string ReaderSerialNumber)
        {
           // throw new NotImplementedException();
        }

        public void OnFingerTouch(object Capture, string ReaderSerialNumber)
        {
           // throw new NotImplementedException();
        }

        public void OnReaderConnect(object Capture, string ReaderSerialNumber)
        {
           // throw new NotImplementedException();
        }

        public void OnReaderDisconnect(object Capture, string ReaderSerialNumber)
        {
            //throw new NotImplementedException();
        }

        public void OnSampleQuality(object Capture, string ReaderSerialNumber, CaptureFeedback CaptureFeedback)
        {
          //  throw new NotImplementedException();
        }

        private void frmRead_Load(object sender, EventArgs e)
        {
            LoadData();
            Init();
            StartCapture();

            CheckForIllegalCrossThreadCalls = false;
        }

        public void LoadData()
        {
            FPTList.Clear();
            OwnwerList.Clear();

            var mysqlconn = new MySqlConnection();
            mysqlconn.ConnectionString = Controller.SQL.ConnectionString;

            if (mysqlconn.State == ConnectionState.Closed)
                mysqlconn.Open();

            MySqlDataReader myReader;
            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = "select * FROM digi.fingerprintdata";
            cmd.Connection = mysqlconn;

            myReader = cmd.ExecuteReader();

            while (myReader.Read())
            {
               
                MemoryStream mstram;
                byte[] fpbytes = (byte[])myReader.GetValue(1);                
                mstram = new MemoryStream(fpbytes);
                
                    Template temp = new Template();
                    temp.DeSerialize(mstram);
                    FPTList.Add(temp);
                    OwnwerList.Add(myReader.GetString(2));
                
            }
            myReader.Close();
            mysqlconn.Close();

       
        }
        protected void Stop()
        {
            if (null != Capturer)
            {
                try
                {
                    Capturer.StopCapture();
                }
                catch
                {
                   
                }
            }
        }
        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Stop();
            Form f = new frmRegistration();
            f.ShowDialog();
            StartCapture();
        }

        private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            LoadData();
        }
    }
}
