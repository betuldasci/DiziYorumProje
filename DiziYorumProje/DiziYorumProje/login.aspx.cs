using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje
{
    public partial class login : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // x değerim textbox1 deki değere eşitse ve diğeri de textbox ikidekine eşitse
            var sorgu = from x in db.TBLADMIN where 
                        x.KULLANICIAD == TextBox1.Text && x.SIFRE == TextBox2.Text 
                        select x;
            if (sorgu.Any())
            {
                Session.Add("KULLANICIAD", TextBox1.Text);
                Response.Redirect("/AdminSayfalar/Bloglar.aspx");
            }
            else
            {
                Response.Write("HATA");
            }
        }
    }
}