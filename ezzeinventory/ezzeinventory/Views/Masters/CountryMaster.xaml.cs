using ezzeinventory.DataAccess;
using ezzeinventory.Interfaces;
using ezzeinventory.Repositories;
using System;
using System.Collections.Generic;
using System.Data;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ezzeinventory.Views.Masters
{
    /// <summary>
    /// Interaction logic for CountryMaster.xaml
    /// </summary>
    public partial class CountryMaster : UserControl
    {
        ICountry _icountry = new CountryRepository();
        int CId = 0;  
        public CountryMaster()
        {
            InitializeComponent();
            DisplayGridData();
        }

        //Display Data in DataGridView  
        private void DisplayGridData()
        {
            Dtgrid1.ItemsSource = _icountry.GetAll();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(txtCountryName.Text.Trim()))
                {
                    Country _country = new Country();

                    _country.CountryName = txtCountryName.Text.Trim();
                    _country.IsActive = true;
                    _country.CreatedBy = "Admin";//later check
                    _country.CreatedDate = DateTime.Now;

                    bool ret = _icountry.Insert(_country);

                    if (ret)
                    {
                        MessageBox.Show("Country Saved Successfully");
                    }
                    else
                    {
                        MessageBox.Show("There is an Error Occurred");
                    }
                }
                else
                {
                    MessageBox.Show("Please Enter Country");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void ClearData()
        {
            txtCountryName.Text = "";
            CId = 0;
        }
        
        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            var countryid = (DataRowView)Dtgrid1.SelectedItem;
            CId = Convert.ToInt32(countryid.Row["CountryId"].ToString());             
            //btnsubmit.Content = "Update";
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            var countryid = (DataRowView)Dtgrid1.SelectedItem;
            CId = Convert.ToInt32(countryid.Row["CountryId"].ToString());
        }
    }
}
