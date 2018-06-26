using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ezzeinventory.DataAccess;

namespace ezzeinventory.Interfaces
{
    public interface ICountry
    {
        #region Country

        #region Insert

        bool Insert(Country _country);

        #endregion

        #region Update
        
        bool Update(Country _country);

        #endregion

        #region Delete

        bool Delete(Country _country);

        #endregion

        #region GetAll

        IEnumerable<Country> GetAll();
        
        #endregion

        #region GetById

        Country GetById(int Id);

        #endregion
        
        #endregion
    }
}
