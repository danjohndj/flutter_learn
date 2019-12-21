using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;

namespace DashBoaard.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Communication : ContentPage
    {
        private const string PrefPhone = "PrefPhone";
        private const string PrefMsg = "PrefMsg";

        public Communication()
        {
            InitializeComponent();
            Init();
        }

        private void Init()
        {
            txtPhone.Text = Preferences.Get(PrefPhone,"");
            txtMsg.Text = Preferences.Get(PrefMsg, "");
            
        }

        private async Task SendSMS()
        {
            try
            {
                var msg = new SmsMessage(txtMsg.Text, new[] { txtPhone.Text });
                await Sms.ComposeAsync(msg);
            }

            catch (FeatureNotSupportedException ex)
            {
                DisplayAlert(,"SMS not supported on this device");
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", ex.ToString());
            }
        }
        private void Save()
        {
            Preferences.Set(PrefPhone, txtPhone.Text);
            Preferences.Set(PrefMsg, txtMsg.Text);
        }
        public void MakeCall()
        {
            if (txtPhone.Text.Length > 0)
            {
                PhoneDialer.Open(txtPhone.Text);
            }
            else
            {
                // show error
                DisplayAlert("Error", "Phone Number must be entered", "OK");
            }
        }

        private void ToolbarItem_Clicked(object sender, EventArgs e)
        {
            MakeCall();
        }

        private void tbSMS_Clicked(object sender, EventArgs e)
        {
            SendSMS();
        }

        private void tbSave_Clicked(object sender, EventArgs e)
        {
            Save();
        }

    }
}