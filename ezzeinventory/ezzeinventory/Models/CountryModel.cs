using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ezzeinventory.Models
{
    public class CountryModel : INotifyPropertyChanged
    {
        private int countryId;
        private string countryName;
        private bool isActive;
        private string createdBy;
        private DateTime createdDate;
        private string updatedBy;
        private DateTime updatedDate;
        private bool isDeleted;
        private string deletedBy;
        private DateTime deletedDate;

        public int CountryId
        {
            get
            {
                return countryId;
            }
            set
            {
                countryId = value;
                OnPropertyChanged("CountryId");
            }
        }
        public string CountryName
        {
            get
            {
                return countryName;
            }
            set
            {
                countryName = value;
                OnPropertyChanged("CountryName");
            }
        }
        public bool IsActive
        {
            get
            {
                return isActive;
            }
            set
            {
                isActive = value;
                OnPropertyChanged("IsActive");
            }
        }
        public string CreatedBy
        {
            get
            {
                return createdBy;
            }
            set
            {
                createdBy = value;
                OnPropertyChanged("CreatedBy");
            }
        }
        public DateTime CreatedDate
        {
            get
            {
                return createdDate;
            }
            set
            {
                createdDate = value;
                OnPropertyChanged("CreatedDate");
            }
        }
        public string UpdatedBy
        {
            get
            {
                return updatedBy;
            }
            set
            {
                updatedBy = value;
                OnPropertyChanged("UpdatedBy");
            }
        }
        public DateTime UpdatedDate
        {
            get
            {
                return updatedDate;
            }
            set
            {
                updatedDate = value;
                OnPropertyChanged("UpdatedDate");
            }
        }

        public bool IsDeleted
        {
            get
            {
                return isDeleted;
            }
            set
            {
                isDeleted = value;
                OnPropertyChanged("IsDeleted");
            }
        }
        public string DeletedBy
        {
            get
            {
                return deletedBy;
            }
            set
            {
                deletedBy = value;
                OnPropertyChanged("DeletedBy");
            }
        }
        public DateTime DeletedDate
        {
            get
            {
                return deletedDate;
            }
            set
            {
                DeletedDate = value;
                OnPropertyChanged("DeletedDate");
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string prop)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
            }
        }
    }
}
