<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET_SCHOOL_MANAGEMENT_SITE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">E-MAIL</th>
            <th scope="col">ŞİFRƏ</th>
            <th scope="col">ƏMƏLİYYATLAR</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OGRID")%></td>
                        <td><%#Eval("OGRAD")%></td>
                        <td><%#Eval("OGRSOYAD")%></td>
                        <td><%#Eval("OGRTELEFON")%></td>
                        <td><%#Eval("OGRMAIL")%></td>
                        <td><%#Eval("OGRSIFRE")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/OgrenciSil.aspx?OGRID="+Eval("OGRID") %>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success">DƏYİŞ</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>

<%--<th scope="row">1</th>--%>