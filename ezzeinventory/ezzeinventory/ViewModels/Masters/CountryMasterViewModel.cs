using ezzeinventory.Classes;
using ezzeinventory.Interfaces;
using ezzeinventory.Models;
using ezzeinventory.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace ezzeinventory.ViewModels.Masters
{
    class CountryMasterViewModel
    {        
        private ICountry _icountryinterface;
        private IList<CountryModel> _countryList;
        private CountryModel _countryModel;
        public CountryMasterViewModel()
        {
            _icountryinterface = new CountryRepository();
            _countryList = new List<CountryModel>();
            _countryModel = new CountryModel();
        }

        public IList<CountryModel> CountryList
        {
            get {
                _countryList = _icountryinterface.GetAll().ToList();
                return _countryList;            
            }
            set { _countryList = value; }
        }

        private ICommand save;
        public ICommand cmdSave
        {
            get
            {
                if (save == null)
                {
                    //save = new CmdSave();
                    save = new RelayCommand(param => SaveCountry(param), param => true);
                }
                return save;
            }
            set
            {                
                save = value;
            }
        }

        private void SaveCountry(object o)
        {
            _icountryinterface.Update(_countryModel);
        }

        //private class CmdSave : ICommand
        //{
        //    #region ICommand Members

        //    public bool CanExecute(object parameter)
        //    {
        //        return true;
        //    }

        //    public event EventHandler CanExecuteChanged;

        //    public void Execute(object parameter)
        //    {
                
        //    }
        //    #endregion
        //}
    }
}
