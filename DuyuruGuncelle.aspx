<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="ASP.NET_SCHOOL_MANAGEMENT_SITE.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">
            <div>
                <asp:Label for="TxtDuyuruId" runat="server">Bildiriş ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Başlıq</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server">Açıqlama</asp:Label>
                <textarea id="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Yadda Saxla" CssClass="btn btn-info" OnClick="Button1_Click" />
        </div>

    </form>

</asp:Content>
