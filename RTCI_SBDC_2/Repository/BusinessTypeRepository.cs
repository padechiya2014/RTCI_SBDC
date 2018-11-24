using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;


namespace RTCI_SBDC_2.Repository
{
    public class BusinessTypeRepository
    {
        public IEnumerable<SelectListItem> GetBusinessTypeItems()
        {
            IList<Business> BusinessTypeList = new List<Business>();

            SqlCommand com = new SqlCommand("GetBusinessType", RepositoryConnection.Instance)
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

                BusinessTypeList.Add(

                    new Business
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        BusinessType = Convert.ToString(dr["Business"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in BusinessTypeList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.BusinessType,
                    Text = item.BusinessType
                });
            }

            return selectlist;
        }
    }
}