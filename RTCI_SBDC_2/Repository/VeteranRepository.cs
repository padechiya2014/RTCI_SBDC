using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class VeteranRepository
    {
        public IEnumerable<SelectListItem> GetVeteranItems()
        {
            IList<Veteran> VeteranList = new List<Veteran>();

            SqlCommand com = new SqlCommand("GetVeteranStatus", RepositoryConnection.Instance)
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

                VeteranList.Add(

                    new Veteran
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        VeteranStatus = Convert.ToString(dr["VeteranStat"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in VeteranList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.VeteranStatus,
                    Text = item.VeteranStatus
                });
            }

            return selectlist;
        }
    }
}