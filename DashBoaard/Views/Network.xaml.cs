using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace DashBoaard.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Content : ContentPage
    {
        public Content()
        {
            InitializeComponent();
        }

        private void Save()
        {
            Preferences.Set(PrefPhone, txtPhone.Text);
            Preferences.Set(PrefMsg, txtMsg.Text);
        }
    }
}