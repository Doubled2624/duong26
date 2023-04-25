<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="Chitietthongtin.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="margin-left:20px">
        <table cellpadding="0" cellspacing="0" width="100%">
             <tr>
                 <td>
                    <div style=" font-size:20px; font-weight:bold"><asp:Label ID="lbtenthongtin" runat="server"></asp:Label></div>
                    <div style="color:#999966"><asp:Label ID="lbngaygui" runat="server"></asp:Label></div>
                     <div style=" text-align:center"><asp:Image ID="img" runat="server" Width="350px" Height="250px"></asp:Image></div>
                    <div style="margin-top:10px"><asp:Label ID="lbsoluoc" runat="server" ></asp:Label></div>
                    <div><asp:Label ID="lbchitiet" runat="server" ></asp:Label></div>
                 </td>
              </tr>
              <tr>
                  <td align="right" style="padding-top:10px">
                  <asp:HyperLink ID="hplPrevious" runat="server" Style="position: relative" NavigateUrl="~/Default.aspx"><< Trở về</asp:HyperLink>
                  </td>
              </tr>
        </table>
     </div>
</asp:Content>

