using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class CounsellingTypeRepository
    {
        public IEnumerable<SelectListItem> GetCounsellingTypeItems()
        {
            IList<CounsellingType> CounsellingTypeList = new List<CounsellingType>();

            SqlCommand com = new SqlCommand("GetCounsellingType", RepositoryConnection.Instance)
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

                CounsellingTypeList.Add(

                    new CounsellingType
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        CounsellingTypeName = Convert.ToString(dr["Counselling"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in CounsellingTypeList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.CounsellingTypeName,
                    Text = item.CounsellingTypeName
                });
            }

            return selectlist;
        }
    }
}