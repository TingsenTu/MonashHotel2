//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MonashHotel2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CheckIn
    {
        public int Id { get; set; }
        public string CheckInDate { get; set; }
        public string Amount { get; set; }
        public string DaysStayed { get; set; }
        public string Compensation { get; set; }
        public string Status { get; set; }
        public string RoomType { get; set; }
        public string RoomNumber { get; set; }
        public int CustomerId { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Room Room { get; set; }
    }
}
