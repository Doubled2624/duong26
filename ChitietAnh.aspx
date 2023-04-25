<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Trangchu.master" CodeFile="ChitietAnh.aspx.cs" Inherits="ChitietAnh" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="Content1" runat="server">
    <div style="margin-left:20px">
      <div class="ienlarger">
        <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">
          <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTT" 
              DataSourceID="SqlDataSource1">
              <ItemTemplate>
                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Anh") %>' CssClass="resize_thumb"></asp:Image>
                  <span><asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Anh") %>'></asp:Image> <div><div></div></div> </span>
              </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT * FROM [ThongTin]">
             <%-- <SelectParameters>
                  <asp:QueryStringParameter Name="MaTT" QueryStringField="MaTT" Type="Int32" />
              </SelectParameters>--%>
          </asp:SqlDataSource>
        </a>
      </div>
    </div>
</asp:Content>
