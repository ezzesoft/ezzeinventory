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
    
    public partial class Department
    {
        public string DepartmentCode { get; set; }
        public string DepartmentName { get; set; }
        public string CompanyCode { get; set; }
        public string Printer { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<bool> PrintKOT { get; set; }
        public string CLR { get; set; }
        public string OutletCode { get; set; }
        public bool IsActive { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
        public bool IsDeleted { get; set; }
        public string DeletedBy { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    }
}
