//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ashik_Hotel_Reservation
{
    using System;
    using System.Collections.Generic;
    
    public partial class Hotel_Image
    {
        public int Image_ID { get; set; }
        public Nullable<int> Hotel_ID { get; set; }
        public string Image_URL { get; set; }
    
        public virtual Hotel Hotel { get; set; }
    }
}