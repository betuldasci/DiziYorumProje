<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DiziYorumProje.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>

        <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>İLETİŞİM</h2>
                    <p>Blog sayfamızda bulunan film ve dizilere eklemek istedikleriniz için veya yorumlarda yaşayacağınız herhangi bir problem olursa bu panelden bizlere mesaj gönderebilirsiniz. Mesaj gönderme sırasında lütfen mail adresinizi doğru bir şekilde yazınız. </p>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad Soyad" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Telefon" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Konu" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Mesajınız" required="" Height="100px" TextMode="MultiLine"></asp:TextBox>

                        <asp:Button ID="Button1" runat="server" Text="GÖNDER" OnClick="Button1_Click" />
                  
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>Biz Buradayız</h4>
               <div style="overflow:hidden;max-width:100%;width:500px;height:500px;"><div id="canvas-for-googlemap" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Bahçelievler/İstanbul,+Türkiye&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="embedded-map-code" rel="nofollow" href="https://www.bootstrapskins.com/themes" id="enable-map-data">premium bootstrap themes</a><style>#canvas-for-googlemap .text-marker{}.map-generator{max-width: 100%; max-height: 100%; background: none;</style></div>
                    </div>
                   
                    <div class="clearfix"></div>
                </div>


            </div>
        </div>

        <!---->
</asp:Content>
