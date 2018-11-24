using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class RaceRepository
    {
        public IEnumerable<SelectListItem> GetRaceItems()
        {
            IList<Race> RaceList = new List<Race>();

            SqlCommand com = new SqlCommand("GetRace", RepositoryConnection.Instance)
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

                RaceList.Add(

                    new Race
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        RaceType = Convert.ToString(dr["RaceType"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in RaceList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.RaceType,
                    Text = item.RaceType
                });
            }

            return selectlist;
        }
    }
}