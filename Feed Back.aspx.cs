using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;

public partial class Feed_Back : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSend_Click(object sender, EventArgs e)
    {
        var model = new FeedBackModel();
        var fb = createFeedBack();
        LblStatus.Text =  model.InsertFeedBack(fb);
    }

    private FeedBackTable createFeedBack()
    {
        FeedBackTable fb = new FeedBackTable();
        fb.BusinessName = TxtBusinessName.Text;
        fb.CompanyName = TxtCompanyName.Text;
        fb.Email = TxtEmail.Text;
        fb.FirstName = TxtFirstName.Text;
        fb.LastName = TxtLastName.Text;
        fb.Question = TxtMessage.Text;

        return fb;
    }
}