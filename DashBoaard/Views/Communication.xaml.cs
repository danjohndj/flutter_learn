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
        public Communication()
        {
            InitializeComponent();
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
            }
        }
    }
}