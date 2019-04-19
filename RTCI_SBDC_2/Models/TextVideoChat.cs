using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Models
{
    public class TextVideoChat
    {
        [Required]
        [Display(Name = "Advisor:")]
        public string Advisor { get; set; }

        public IEnumerable<SelectListItem> AdvisorList { get; set; }

        public string UserName { get; set; }
    }
}