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
    
    public partial class programs
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public programs()
        {
            this.co_executors = new HashSet<co_executors>();
            this.subprograms = new HashSet<subprograms>();
        }
    
        public int program_id { get; set; }
        public string program_name { get; set; }
        public Nullable<System.DateTime> period_begin { get; set; }
        public Nullable<int> executor_id { get; set; }
        public Nullable<System.DateTime> period_end { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<co_executors> co_executors { get; set; }
        public virtual executors executors { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<subprograms> subprograms { get; set; }
    }
}