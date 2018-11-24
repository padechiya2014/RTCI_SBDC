using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class CountryRepository
    {
        public IEnumerable<SelectListItem> GetCountries()
        {
            IList<Country> CountryList = new List<Country>();

            SqlCommand com = new SqlCommand("GetCountries", RepositoryConnection.Instance)
            {
                CommandType = CommandType.StoredProcedure
            };
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();

            RepositoryConnection.Instance.Open();
            da.Fill(dt);
            RepositoryConnection.Instance.Close();
            //Bind EmpModel generic list using dataRow     
            foreach (DataRow dr in dt.Rows)
            {

                CountryList.Add(

                    new Country
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        CountryName = Convert.ToString(dr["CountryName"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in CountryList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.CountryName,
                    Text = item.CountryName
                });
            }

            return selectlist;
        }
    }
}