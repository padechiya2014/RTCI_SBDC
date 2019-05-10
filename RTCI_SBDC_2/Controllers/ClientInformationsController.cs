using RTCI_SBDC_2.Models;
using RTCI_SBDC_2.Repository;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Controllers
{
    public class ClientInformationsController : Controller
    {
        #region Private class variables
        private readonly RegionRepository _regionRepository;
        private readonly CountryRepository _countryRepository;
        private readonly ClientInformation _clientInformation;
        private readonly BusinessTypeRepository _businessTypeRepository;
        private readonly BusinessStatusRepository _businessStatusRepository;
        private readonly CounsellingTypeRepository _counsellingTypeRepository;
        private readonly ExportRepository _exportRepository;
        private readonly GenderRepository _genderRepository;
        private readonly RaceRepository _raceTypeRepository;
        private readonly SBAClientTypeRepository _sbaClientTypeRepository;
        private readonly VeteranRepository _veteranTypeRepository;
        #endregion

        #region Counstructor
        public ClientInformationsController()
        {
            _regionRepository = new RegionRepository();
            _clientInformation = new ClientInformation();
            _countryRepository = new CountryRepository();
            _businessTypeRepository = new BusinessTypeRepository();
            _businessStatusRepository = new BusinessStatusRepository();
            _counsellingTypeRepository = new CounsellingTypeRepository();
            _exportRepository = new ExportRepository();
            _genderRepository = new GenderRepository();
            _raceTypeRepository = new RaceRepository();
            _sbaClientTypeRepository = new SBAClientTypeRepository();
            _veteranTypeRepository = new VeteranRepository();
        }
        #endregion

        #region Action Methods
        // GET: Employee/GetAllEmpDetails 
        [HttpGet]
        public ActionResult GetAllClientDetails()
        {
            RTICRepository ClientRepo = new RTICRepository();
            ModelState.Clear();
            return View(ClientRepo.GetAllClients());
        }

        // GET: Employee/AddEmployee   
        [HttpGet]
        public ActionResult CreateClients()
        {
            ClientInformation clientInfoObj = new ClientInformation
            {
                // SetRegions();
                //TempData["RegionList"] = clientInformation.StateList;
                StateList = SetRegions(),
                CountryList = SetCountries(),
                PhoneTypeList = SetPhoneTypes(),
                BusinessStatusList = SetBusinessStatus(),
                BusinessTypeList = SetBusinessType(),
                CounsellingTypeList = SetCounsellingType(),
                ExportList = SetExportType(),
                GenderList = SetGender(),
                RaceList = SetRaceTypes(),
                SBAClientList = SetSBAClientTypes(),
                VeteranStatusList = SetVeteranStatus()
            };

            //TempData["StateList"] = objc.StateList;

            return View("CreateClients", clientInfoObj);
        }

        public ActionResult IndexCreate()
        {
            SetRegions();
            return View("CreateClients", _clientInformation);
        }

        // POST: Employee/AddEmployee 
        //public ActionResult CreateClients(ClientInformation client, FormCollection form)
        [HttpPost]
        public ActionResult CreateClients(ClientInformation client)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    RTICRepository ClientRepo = new RTICRepository();

                    if (ClientRepo.AddClient(client))
                    {
                        ViewBag.Message = "Client details added successfully";

                        //return RedirectToAction("GetAllClientDetails");
                    }

                }
                else
                {
                    return View("CreateClients", client);
                }

                //return RedirectToAction("GetAllClientDetails");
                return View("TextVideoChat");

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return View();
            }
        }

        // GET: ClientInformations
        public ActionResult Index()
        {
            return View("Landing");
        }

        public ActionResult TextChatView()
        {
            return View("TextChat");
        }

        public ActionResult TextVideoChatView()
        {
            return Redirect("https://rtcivideochat.azurewebsites.net");
        }

        // GET: ClientInformations/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }


        // GET: ClientInformations/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ClientInformations/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ClientInformations/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ClientInformations/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion


        #region Set all Dropdown values from Database Repository
        private IEnumerable<SelectListItem> SetRegions()
        {
           return _regionRepository.GetRegions();
        }

        private IEnumerable<SelectListItem> SetCountries()
        {
            return _countryRepository.GetCountries();
        }

        private IEnumerable<SelectListItem> SetPhoneTypes()
        {
            IList<PhoneTypes> phoneTypeList = new List<PhoneTypes>
            {
                new PhoneTypes() { PhoneType = "Home" },
                new PhoneTypes() { PhoneType = "Business" },
                new PhoneTypes() { PhoneType = "Cell" }
            };

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in phoneTypeList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.PhoneType,
                    Text = item.PhoneType
                });
            }

            return selectlist;

        }

        private IEnumerable<SelectListItem> SetBusinessStatus()
        {
            return _businessStatusRepository.GetBusinessStatusItems();
        }

        private IEnumerable<SelectListItem> SetBusinessType()
        {
            return _businessTypeRepository.GetBusinessTypeItems();
        }

        private IEnumerable<SelectListItem> SetCounsellingType()
        {
            return _counsellingTypeRepository.GetCounsellingTypeItems();
        }

        private IEnumerable<SelectListItem> SetExportType()
        {
            return _exportRepository.GetExportItems();
        }

        private IEnumerable<SelectListItem> SetGender()
        {
            return _genderRepository.GetGenderItems();
        }

        private IEnumerable<SelectListItem> SetRaceTypes()
        {
            return _raceTypeRepository.GetRaceItems();
        }

        private IEnumerable<SelectListItem> SetSBAClientTypes()
        {
            return _sbaClientTypeRepository.GetSBAClientTypeItems();
        }

        private IEnumerable<SelectListItem> SetVeteranStatus()
        {
            return _veteranTypeRepository.GetVeteranItems();
        }
        #endregion


    }
}
