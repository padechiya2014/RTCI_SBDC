using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class RegionRepository
    {
        public IEnumerable<SelectListItem> GetRegions()
        {
            IList<Region> RegionList = new List<Region>();

            SqlCommand com = new SqlCommand("GetRegions", RepositoryConnection.Instance)
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

                RegionList.Add(

                    new Region
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        State = Convert.ToString(dr["Region"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in RegionList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.State,
                    Text = item.State
                });
            }

            return selectlist;
        }
    }
}