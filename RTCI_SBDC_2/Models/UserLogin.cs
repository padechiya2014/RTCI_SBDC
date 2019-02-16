using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace RTCI_SBDC_2.Models
{
    
    public class UserLogin
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        
        [MaxLength(50)]
        [DisplayName("First Name")]
        [Required(ErrorMessage = "This field is required.")]
        public string FirstName { get; set; }

        [MaxLength(50)]
        [DisplayName("Last Name")]
        [Required(ErrorMessage = "This field is required.")]
        public string LastName { get; set; }

        //public string LoginErrorMessage { get; set; }
    }
}