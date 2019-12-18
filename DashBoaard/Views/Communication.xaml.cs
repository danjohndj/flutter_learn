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
        }

        private void Init()
        {
            txtPhone.Text = Preferences.Get(PrefPhone);
            
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

        }

        private void tbSave_Clicked(object sender, EventArgs e)
        {

        }

    }
}