using System;

using System.Data;
using System.Drawing;
using System.IO;

using System.Windows.Forms;
using DPFP;
using DPFP.Capture;
using DPFP.Processing;
using MySql.Data.MySqlClient;

delegate void Function();
namespace DigitalPersona_CSharp
{
    public partial class frmRegistration : Form, DPFP.Capture.EventHandler
    {
        private Capture Capturer;
        private Template Template;
        private Enrollment Enroller;
        public frmRegistration()
        {
            InitializeComponent();
        }


        #region UserCalls 

        protected void MakeReport(string message)
        {
            this.Invoke(new Function(delegate ()
            {
                lstStatus.Items.Insert(0, message);
            }));
        }
        protected void MakeReportSts()
        {
            this.Invoke(new Function(delegate ()
            {
                lstStatus.Items.Insert(0, "Fingerprint samples needed:" + Enroller.FeaturesNeeded);
            }));
        }

        private void DrawPicture(Bitmap bitmap)
        {
            this.Invoke(new Function(delegate ()
            {
                Picture.Image = new Bitmap(bitmap, Picture.Size);
            }));
        }

        #endregion

        #region EventHandler Members:


        protected virtual void Init()
        {
            try
            {
                Capturer = new Capture();              // Create a capture operation.

                if (null != Capturer)
                    Capturer.EventHandler = this;                   // Subscribe for capturing events.
                else
                    MakeReport("Can't initiate capture operation!");

            }
            catch
            {
                MakeReport("Can't initiate capture operation!");
            }
            finally
            {
                Enroller = new Enrollment();
                MakeReportSts();
            }
        }


        protected virtual void Process(Sample Sample)
        {
            // Draw fingerprint sample image.            
            DrawPicture(ConvertSampleToBitmap(Sample));
            // Process the sample and create a feature set for the enrollment purpose.
            FeatureSet features = ExtractFeatures(Sample, DataPurpose.Enrollment);
            try
            {
                if (features != null)
                {
                    try
                    {
                        MakeReport("The fingerprint feature set was created.");
                        Enroller.AddFeatures(features);        // Add feature set to template.
                    }
                    finally
                    {
                        if (Enroller.TemplateStatus ==Enrollment.Status.Ready)
                        {
                            OnTemplate(Enroller.Template);
                            MakeReport("Click Save, and then click Fingerprint Verification.");
                            Stop();
                        }
                        if (Enroller.TemplateStatus == Enrollment.Status.Failed)
                        {
                            Enroller.Clear();
                            Stop();
                            OnTemplate(null);
                            Start();
                        }
                        MakeReportSts();
                    }
                }
            }
            catch { }
        }
        private void OnTemplate(Template template)
        {
            try
            {
                this.Template = template;
                if (template != null)
                    MakeReport("The fingerprint template is ready for fingerprint verification.");
                else
                {
                    MakeReport("The fingerprint template is not valid. Repeat fingerprint enrollment.");
                    Init();
                    Start();
                }
            }
            catch (Exception ex)
            {
                MakeReport(ex.Message);
            }
        }
        protected void Start()
        {
            if (null != Capturer)
            {
                try
                {
                    Capturer.StartCapture();
                    MakeReport("Using the fingerprint reader, scan your fingerprint.");
                }
                catch
                {
                    MakeReport("Can't initiate capture!");
                }
            }
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
                    MakeReport("Can't terminate capture!");
                }
            }
        }
        public void OnComplete(object Capture, string ReaderSerialNumber, Sample Sample)
        {
            MakeReport("The fingerprint sample was captured.");
            MakeReport("Scan the same fingerprint again.");
            Process(Sample);
            //throw new NotImplementedException();
        }

        public void OnFingerGone(object Capture, string ReaderSerialNumber)
        {
            MakeReport("The finger was removed from the fingerprint reader.");
            //throw new NotImplementedException();
        }

        public void OnFingerTouch(object Capture, string ReaderSerialNumber)
        {
            MakeReport("The fingerprint reader was touched.");
            //throw new NotImplementedException();
        }

        public void OnReaderConnect(object Capture, string ReaderSerialNumber)
        {
            MakeReport("The fingerprint reader was connected.");
            //throw new NotImplementedException();
        }

        public void OnReaderDisconnect(object Capture, string ReaderSerialNumber)
        {
            MakeReport("The fingerprint reader was disconnected.");
            //throw new NotImplementedException();
        }

        public void OnSampleQuality(object Capture, string ReaderSerialNumber, CaptureFeedback CaptureFeedback)
        {
            if (CaptureFeedback == DPFP.Capture.CaptureFeedback.Good)
                MakeReport("The quality of the fingerprint sample is good.");
            else
                MakeReport("The quality of the fingerprint sample is poor.");
            //throw new NotImplementedException();
        }

        protected Bitmap ConvertSampleToBitmap(Sample Sample)
        {
            SampleConversion Convertor = new SampleConversion();  // Create a sample convertor.
            Bitmap bitmap = null;                                                           // TODO: the size doesn't matter
            Convertor.ConvertToPicture(Sample, ref bitmap);                                 // TODO: return bitmap as a result
            return bitmap;
        }

        protected DPFP.FeatureSet ExtractFeatures(Sample Sample,DataPurpose Purpose)
        {
           FeatureExtraction Extractor = new FeatureExtraction();  // Create a feature extractor
           CaptureFeedback feedback = CaptureFeedback.None;
            FeatureSet features = new FeatureSet();
            Extractor.CreateFeatureSet(Sample, Purpose, ref feedback, ref features);            // TODO: return features as a result?
            if (feedback == CaptureFeedback.Good)
                return features;
            else
                return null;
        }
        #endregion



        private void Form1_Load(object sender, EventArgs e)
        {
            Init();
            Start();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            MemoryStream stream = new MemoryStream();

            try
            {
               
                using (MySqlCommand sqlCommand = new MySqlCommand())
                {
                    MySqlConnection MySqlConn = new MySqlConnection(Controller.SQL.ConnectionString);
                    {
                        var withBlock = sqlCommand;
                        withBlock.CommandText = "insert into fingerprintdata (Data, Owner) values (@f_data,@f_owner) ";
                        withBlock.Connection = MySqlConn;
                        withBlock.CommandType = CommandType.Text;
                        withBlock.Parameters.AddWithValue("@f_owner", textBox1.Text);
                        MySqlParameter pp1 = new MySqlParameter("@f_data", MySqlDbType.MediumBlob);
                        MemoryStream ms1 = new MemoryStream();
                        Template.Serialize(ms1);
                        byte[] data = ms1.GetBuffer();
                        pp1.Value = data;
                        withBlock.Parameters.Add(pp1);
                    }
                    try
                    {
                        if (MySqlConn.State == ConnectionState.Closed)
                            MySqlConn.Open();
                        sqlCommand.ExecuteNonQuery();
                        MySqlConn.Close();
                    }
                    catch (MySqlException ex)
                    {
                        MakeReport(ex.Message);
                        return;
                    }
                }
            }
            finally {
                this.Dispose();
            }
        }

        private void frmRegistration_FormClosing(object sender, FormClosingEventArgs e)
        {
            Stop();
        }
    }
}

