using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Models
{
    public class ClientInformation
    {
        // Contact Information
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "First Name:")]
        public string FirstName { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "Last Name:")]
        public string LastName { get; set; }

        [Required]
        [MaxLength(100)]
        [Display(Name = "Business Name:")]
        public string BusinessName { get; set; }

        [Display(Name = "No business name at this time")]
        public bool HasBusinessName { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "Address1:")]
        public string Address1 { get; set; }

      
        [Display(Name = "Address2:")]
        public string Address2 { get; set; }

        [Required]
        [MaxLength(50)]
        [Display(Name = "City:")]
        public string City { get; set; }

        [Required]
        [Display(Name = "State/Province:")]
        public string State { get; set; }

        public IEnumerable<SelectListItem> StateList { get; set; }

        [Required]
        [MaxLength(5)]
        [Display(Name = "Zip:")]
        public string Zip { get; set; }

       
        [Display(Name = "Country:")]
        public string Country { get; set; }

        public IEnumerable<SelectListItem> CountryList { get; set; }

        [Required]
        [MaxLength(100)]
        [EmailAddress]
        [Display(Name = "Email Address:")]
        public string Email { get; set; }

        [Display(Name = "Phone Number:")]
        public string Phone { get; set; }

        [Display(Name = "Phone Type:")]
        public string PhoneType { get; set; }

        public IEnumerable<SelectListItem> PhoneTypeList { get; set; }

        [Display(Name = "Best Contact Method:")]
        public string BestContactMethod { get; set; }

        [Display(Name = "Best time for contact:")]
        public string BestTimeForContact { get; set; }


        #region
        /// <summary>
        /// Business Information
        /// </summary>
        // 
        [Required]
        [Display(Name = "Currently in Business?")]
        public string CurrentlyInBusiness { get; set; }

        [Required]
        [Display(Name = "Is this a Home-based Business?")]
        public string IsHomeBased { get; set; }

        [Required]
        [Display(Name = "Business Owner(s) Gender(s):")]
        public string Gender { get; set; }
        public IEnumerable<SelectListItem> GenderList { get; set; }

        [Required]
        [Display(Name = "Race:")]
        public string Race { get; set; }
        public IEnumerable<SelectListItem> RaceList { get; set; }

        [Required]
        [Display(Name = "Veteran Status :")]
        public string VeteranStatus { get; set; }
        public IEnumerable<SelectListItem> VeteranStatusList { get; set; }

        [Required]
        [Display(Name = "Business Status:")]
        public string BusinessStatus { get; set; }
        public IEnumerable<SelectListItem> BusinessStatusList { get; set; }

        [Required]
        [Display(Name = "SBA Client (Past or Present):")]
        public string SBAClient { get; set; }
        public IEnumerable<SelectListItem> SBAClientList { get; set; }

        [Required]
        [Display(Name = "Export :")]
        public string Export { get; set; }
        public IEnumerable<SelectListItem> ExportList { get; set; }

        [Required]
        [Display(Name = "Business Type :")]
        public string BusinessType { get; set; }
        public IEnumerable<SelectListItem> BusinessTypeList { get; set; }

        [Required]
        [Display(Name = "Counseling Type:")]
        public string CounsellingType { get; set; }
        public IEnumerable<SelectListItem> CounsellingTypeList { get; set; }

        [Display(Name = "Describe your business:")]
        public string DescribeBusiness { get; set; }

        [Display(Name = "Website Address:")]
        public string WebAddress { get; set; }

        [Required]
        [Display(Name = "Describe the nature of the counseling you are seeking")]
        public string RequestForCounsellingInfo { get; set; }

        #endregion

    }
}