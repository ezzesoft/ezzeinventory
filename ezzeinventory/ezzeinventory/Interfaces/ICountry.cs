using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ezzeinventory.Models;

namespace ezzeinventory.Interfaces
{
    public interface ICountry
    {
        #region Country

        #region Insert

        bool Insert(CountryModel _country);

        #endregion

        #region Update

        bool Update(CountryModel _country);

        #endregion

        #region Delete

        bool Delete(CountryModel _country);

        #endregion

        #region GetAll

        IEnumerable<CountryModel> GetAll();
        
        #endregion

        #region GetById

        CountryModel GetById(CountryModel _country);

        #endregion
        
        #endregion
    }
}
