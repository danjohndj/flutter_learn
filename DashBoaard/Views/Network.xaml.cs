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
    public partial class Network : ContentPage
    {
        private const string PrefWifi = "PrefWifi";
        public Network()
        {
            InitializeComponent();
            Init();
        }

        private void Refresh()
        {

        }
        private void Save()
        {
            Preferences.Set(PrefWifi, txtWifi.Text);
        }

        private void Init()
        {
            txtWifi.Text = Preferences.Get(PrefWifi, Lib.Blank);
        }
    }
}