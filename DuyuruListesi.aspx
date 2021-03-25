<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="ASP.NET_SCHOOL_MANAGEMENT_SITE.DuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIQ</th>
            <th scope="col">AÇIQLAMA</th>
            <th scope="col">MÜƏLLİM</th>
            <th scope="col">ƏMƏLİYYATLAR</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DUYURUID")%></td>
                        <td><%#Eval("DUYURUBASLIK")%></td>
                        <td><%#Eval("DUYURUICERIK")%></td>
                        <td><%#Eval("DUYURUOGRT")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/DuyuruSil.aspx?DUYURUID="+Eval("DUYURUID") %>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/DuyuruGuncelle.aspx?DUYURUID="+Eval("DUYURUID") %>' runat="server" CssClass="btn btn-success">DƏYİŞ</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
