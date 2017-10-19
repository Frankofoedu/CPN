using Models;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{

	protected void Page_Load(object sender, EventArgs e)
	{
		if (Session["curUser"] != null)
		{

			if (Session["curUser"].GetType() == typeof(IndividualTable))
			{
				var user = new IndividualTable();
				user = (IndividualTable)Session["curUser"];
				litStatus.Text = user.Email;
				lnkLogin.Visible = false;
				lnkRegister.Visible = false;

				LnkLogout.Visible = true;
				litStatus.Visible = true;
			}
			else
			{
				var user = new CorporateTable();
				user = (CorporateTable)Session["curUser"];
				litStatus.Text = user.Email;
				lnkLogin.Visible = false;
				lnkRegister.Visible = false;

				LnkLogout.Visible = true;
				litStatus.Visible = true;
			}

		}
		else
		{
			lnkLogin.Visible = true;
			lnkRegister.Visible = true;
			LnkLogout.Visible = false;
			litStatus.Visible = true;
		}



		
		
	}
	
	protected void LnkLogout_Click(object sender, EventArgs e)
	{
		Session.Remove("curUser");
		Response.Redirect("../Index.aspx");
	}
}