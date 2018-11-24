using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class SBAClientTypeRepository
    {
        public IEnumerable<SelectListItem> GetSBAClientTypeItems()
        {
            IList<SBAClient> SBAClientList = new List<SBAClient>();

            SqlCommand com = new SqlCommand("GetSBAClientType", RepositoryConnection.Instance)
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

                SBAClientList.Add(

                    new SBAClient
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        SBAClientType = Convert.ToString(dr["SBAClient"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in SBAClientList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.SBAClientType,
                    Text = item.SBAClientType
                });
            }

            return selectlist;
        }
    }
}