using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ezzeinventory
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();

            DatePickerDate.Text = System.DateTime.Today.ToShortDateString();

            AlertIcon.Visibility = Visibility.Collapsed;
            LabelError.Visibility = Visibility.Collapsed;
        }

        private void ButtonLogin_Click(object sender, RoutedEventArgs e)
        {
            string pwd = TextBoxPassword.Password;

            if (TextBoxUsername.Text=="administrator" && pwd=="12345")
            {
                MainWindow obj = new MainWindow();

                obj.Show();
                this.Hide();

            }
            else
            {
                AlertIcon.Visibility = Visibility.Visible;
                LabelError.Visibility = Visibility.Visible;
            }
        }

        private void ButtonExit_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
