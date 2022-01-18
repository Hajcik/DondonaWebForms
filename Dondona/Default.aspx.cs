using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dondona.Models;
using MongoDB.Bson;
using MongoDB.Driver;

namespace Dondona
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SiteMaster siteMaster = new SiteMaster();

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}