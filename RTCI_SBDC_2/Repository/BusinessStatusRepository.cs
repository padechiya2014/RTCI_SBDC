﻿using RTCI_SBDC_2.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mvc;

namespace RTCI_SBDC_2.Repository
{
    public class BusinessStatusRepository
    {
        public IEnumerable<SelectListItem> GetBusinessStatusItems()
        {
            IList<BusinessStatus> BusinessStatusList = new List<BusinessStatus>();

            SqlCommand com = new SqlCommand("GetBusinessStatus", RepositoryConnection.Instance)
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

                BusinessStatusList.Add(

                    new BusinessStatus
                    {
                        ID = Convert.ToInt32(dr["ID"]),
                        BusinessStatusType = Convert.ToString(dr["BusinessStat"])
                    }
                    );
            }

            List<SelectListItem> selectlist = new List<SelectListItem>();
            foreach (var item in BusinessStatusList)
            {
                selectlist.Add(new SelectListItem
                {
                    Value = item.BusinessStatusType,
                    Text = item.BusinessStatusType
                });
            }

            return selectlist;
        }
    }
}