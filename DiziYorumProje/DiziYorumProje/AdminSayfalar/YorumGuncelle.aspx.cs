using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DiziYorumProje.Entity;

namespace DiziYorumProje.AdminSayfalar
{
    public partial class YorumGuncelle : System.Web.UI.Page
    {
        BlogDiziEntities db = new BlogDiziEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["YORUMID"]);
            if (Page.IsPostBack== false)
            {
                
                var yorumlar = db.TBLYORUM.Find(x);
                TextBox3.Text = yorumlar.TBLBLOG.BLOGBASLIK;
                TextBox1.Text = yorumlar.KULLANICIAD;
                TextBox2.Text = yorumlar.MAIL;
                TextBox4.Text = yorumlar.YORUMICERIK;
               
            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["YORUMID"]);
            var yorum = db.TBLYORUM.Find(y);
            yorum.KULLANICIAD = TextBox1.Text;
            yorum.MAIL = TextBox2.Text;
            yorum.YORUMICERIK = TextBox4.Text;
            yorum.TBLBLOG.BLOGBASLIK = TextBox3.Text;
            db.SaveChanges();
            Response.Redirect("Yorumlar.aspx");

        }
    }
}