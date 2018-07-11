using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ezzeinventory.Interfaces;
using ezzeinventory.Models;
using ezzeinventory.DataAccess;

namespace ezzeinventory.Repositories
{
    public class CountryRepository : ICountry
    {
        ezzeinventoryEntities _ezzeInventoryEntities;
        /// <summary>
        /// Constructor Defined
        /// </summary>
        public CountryRepository()
        {
            _ezzeInventoryEntities = new ezzeinventoryEntities();
        }

        #region Country

        #region Insert

        public bool Insert(CountryModel _country)
        {
            bool ret = false;
            try
            {
                if (_country != null)
                {
                    Country objcountry = new Country();
                    objcountry.CountryName = _country.CountryName;
                    objcountry.CreatedBy = "Admin"; // logic will be change while live
                    objcountry.CreatedDate = DateTime.Now;
                    _ezzeInventoryEntities.Countries.Add(objcountry);                    
                    _ezzeInventoryEntities.SaveChanges();
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

        public bool Update(CountryModel _country)
        {
            bool ret = false;
            try
            {
                var result = _ezzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == _country.CountryId);
                if (result != null)
                {
                    result.CountryId = _country.CountryId;
                    result.CountryName = _country.CountryName;
                    result.UpdatedBy = _country.UpdatedBy;
                    result.UpdatedDate = _country.UpdatedDate;
                    _ezzeInventoryEntities.SaveChanges();
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

        public bool Delete(CountryModel _country)
        {
            bool ret = false;
            try
            {
                var result = _ezzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == _country.CountryId);
                if (result != null)
                {
                    result.CountryId = _country.CountryId;
                    result.IsDeleted = true;
                    result.DeletedBy = _country.DeletedBy;
                    result.DeletedDate = _country.DeletedDate;
                    _ezzeInventoryEntities.SaveChanges();
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

        public IEnumerable<CountryModel> GetAll()
        {            
            try
            {
                List<CountryModel> countrylist = new List<CountryModel>();
                var countries = _ezzeInventoryEntities.Countries.ToList();
                foreach (var _country in countries)
                {
                    var obj = new CountryModel()
                    {
                       CountryId = _country.CountryId,
                       CountryName =_country.CountryName,
                       IsActive = _country.IsActive
                    };
                    countrylist.Add(obj);
                }
                return countrylist;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion

        #region GetById

        public CountryModel GetById(CountryModel _country)
        {
            try
            {
                Country objCountry = new Country();
                objCountry = _ezzeInventoryEntities.Countries.SingleOrDefault(b => b.CountryId == _country.CountryId);
                _country.CountryId = objCountry.CountryId;
                _country.CountryName = objCountry.CountryName;
                _country.IsActive = objCountry.IsActive;
                _country.CreatedBy = objCountry.CreatedBy;
                return _country;
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
