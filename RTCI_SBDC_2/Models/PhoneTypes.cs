using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RTCI_SBDC_2.Models
{
    public class PhoneTypes
    {
        [Key]
        public int ID { get; set; }

        public string PhoneType { get; set; }
    }
}