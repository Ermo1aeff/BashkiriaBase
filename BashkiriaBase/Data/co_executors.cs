//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
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
