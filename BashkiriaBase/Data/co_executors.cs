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
    
    public partial class co_executors
    {
        public int co_executor_id { get; set; }
        public Nullable<int> program_id { get; set; }
        public Nullable<int> executor_id { get; set; }
    
        public virtual executors executors { get; set; }
        public virtual programs programs { get; set; }
    }
}