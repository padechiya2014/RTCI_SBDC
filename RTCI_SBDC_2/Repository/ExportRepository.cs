using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class ExportRepository
    {
        public IEnumerable<SelectListItem> GetExportItems()
        {
            IList<Export> ExportList = new List<Export>();

            SqlCommand com = new SqlCommand("GetExportType", RepositoryConnection.Instance)
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

                ExportList.Add(

                    new Export
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        ExportType = Convert.ToString(dr["Export"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in ExportList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.ExportType,
                    Text = item.ExportType
                });
            }

            return selectlist;
        }
    }
}