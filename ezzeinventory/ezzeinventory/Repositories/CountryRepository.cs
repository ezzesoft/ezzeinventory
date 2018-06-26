using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ezzeinventory.DataAccess;
using ezzeinventory.Interfaces;

namespace ezzeinventory.Repositories
{
    public class CountryRepository : ICountry
    {
        private ezzeinventoryEntities EzzeInventoryEntities = new ezzeinventoryEntities();

        #region Country

        #region Insert

        public bool Insert(Country _country)
        {
            bool ret = false;

            try
            {
                if (_country != null)
                {
                    EzzeInventoryEntities.Countries.Add(_country);

                    EzzeInventoryEntities.SaveChanges();

                    ret = true;
                }

                return ret;
            }
            catch (Exception ex)
            {
                return ret;
            }
        }
      
        #endregion

        #region Update
       
        public bool Update(Country _country)
        {
            bool ret = false;

            try
            {
                var result = EzzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == _country.CountryId);

                if (result != null)
                {

                    result.CountryName = _country.CountryName;
                    result.UpdatedBy = _country.UpdatedBy;
                    result.UpdatedDate = _country.UpdatedDate;

                    EzzeInventoryEntities.SaveChanges();

                    ret = true;

                }

                return ret;
            }
            catch (Exception ex)
            {
                return ret;
            }
        }
      
        #endregion

        #region Delete
       
        public bool Delete(Country _country)
        {
            bool ret = false;

            try
            {
                var result = EzzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == _country.CountryId);

                if (result != null)
                {
                    result.IsDeleted = true;
                    result.DeletedBy = _country.DeletedBy;
                    result.DeletedDate = _country.DeletedDate;

                    EzzeInventoryEntities.SaveChanges();

                    ret = true;
                }

                return ret;
            }
            catch (Exception ex)
            {
                return ret;
            }
        }
        
        #endregion

        #region GetAll
        
        public IEnumerable<Country> GetAll()
        {
            try
            {
                return EzzeInventoryEntities.Countries.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region GetById
       
        public Country GetById(int Id)
        {
            try
            {
                Country objCountry = new Country();

                objCountry = EzzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == Id);

                return objCountry;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #endregion

    }
}
