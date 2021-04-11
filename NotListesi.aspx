<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="ASP.NET_SCHOOL_MANAGEMENT_SITE.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">QIYMƏT ID</th>
            <th scope="col">TƏLƏBƏ ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DƏRS ADI</th>
            <th scope="col">İMTAHAN 1</th>
            <th scope="col">İMTAHAN 2</th>
            <th scope="col">İMTAHAN 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">VƏZİYYƏT</th>
            <th scope="col">DƏYİŞ</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <itemtemplate>
                    <tr>
                        <td><%#Eval("NOTID")%></td>
                        <td><%#Eval("OGRENCIID")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("SINAV1")%></td>
                        <td><%#Eval("SINAV2")%></td>
                        <td><%#Eval("SINAV3")%></td>
                        <td><%#Eval("ORTALAMA")%></td>
                        <td><%#Eval("DURUM")%></td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "~/NotGuncelle.aspx?notID="+Eval("NOTID") %>' runat="server" CssClass="btn btn-success">DƏYİŞ</asp:HyperLink>
                        </td>
                    </tr>
                </itemtemplate>

            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
