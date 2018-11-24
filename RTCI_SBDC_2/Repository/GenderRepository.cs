using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class GenderRepository
    {
        public IEnumerable<SelectListItem> GetGenderItems()
        {
            IList<Gender> GenderList = new List<Gender>();

            SqlCommand com = new SqlCommand("GetGender", RepositoryConnection.Instance)
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

                GenderList.Add(

                    new Gender
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        GenderTypeName = Convert.ToString(dr["GenderType"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in GenderList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.GenderTypeName,
                    Text = item.GenderTypeName
                });
            }

            return selectlist;
        }
    }
}