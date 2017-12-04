using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hautte_Pet_Parlor
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, EventArgs e)
        {
            //do magic
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

            
        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView2.DataBind();
        }

        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            String strPet;
            int petID;
            strPet = String.Empty;

            if (rbDog.Checked)
            {
                strPet = "Dog";
            }

            if (rbCat.Checked)
            {
                strPet = "Cat";
            }

            if (strPet == String.Empty)
            {
                Response.Write("<script>alert('You must check Dog or Cat');</script>");
                e.Cancel = true;
            }

          
            petID = Int32.Parse(((TextBox)DetailsView2.Rows[0].Cells[1].Controls[0]).Text);

        }
    }
}