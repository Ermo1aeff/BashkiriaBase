//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BashkiriaBase.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class executors
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public executors()
        {
            this.co_executors = new HashSet<co_executors>();
            this.programs = new HashSet<programs>();
        }
    
        public int executor_id { get; set; }
        public string executor_name { get; set; }
        public string password { get; set; }
        public string login { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<co_executors> co_executors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<programs> programs { get; set; }
    }
}