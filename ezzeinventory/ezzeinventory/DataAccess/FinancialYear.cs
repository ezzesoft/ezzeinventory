//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ezzeinventory.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class FinancialYear
    {
        public FinancialYear()
        {
            this.Godowns = new HashSet<Godown>();
        }
    
        public int FinancialYearId { get; set; }
        public string FinancialYearName { get; set; }
        public bool IsActive { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
        public string DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        public virtual ICollection<Godown> Godowns { get; set; }
    }
}
