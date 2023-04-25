<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div style="margin-left: 14px">
        <div>
            <div style="color:#0fa6f1; font-size:18px; font-weight:bold; font-family:Arial">TIN TỨC NỔI BẬT</div>
            <div style="height:1px;overflow:hidden;background:black;margin-top:5px; width:100%"></div>
            <div>
                 <table cellpadding="0" cellspacing="0" class="tin">
                         <tr>
                         <td>
                            <table>
                               <tr>
                                 <td class="style1" align="center">
                                   CHÍNH TRỊ - XÃ HỘI
                                 </td>
                                    <td >
                                        
                                    </td>
                                    <td>
                                    &nbsp
                                    </td>
                                </tr>
                             </table>
                        </td>
                     </tr>
                     <tr>
                        <td>
                            <table align="left" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                    
                                       <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTT" 
                                            DataSourceID="SqlDataSource1" Width="100%">
                                           <ItemTemplate>
                                                <table cellpadding="0" cellspacing="0" style="width:100%">
                                                       <tr>
                                                           <td>
                                                             <div class="ndKhung">
                                                             <div style="margin-top:0px"><asp:Image ID="Image1" runat="server" CssClass="imgHost" ImageUrl='<%# Eval("Anh") %>' Width="190px" Height="135px"></asp:Image> </div>
                                                            <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                             <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                             <div class="ndChinh"><asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                                             </div>
                                                             <div style="text-align:right">
                                                              <div align="right">
                                                                <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" >>>chi tiết</a>
                                                              </div>
                                                             </div>
                                                             <div class="line">
                                                             </div>
                                                           </td>
                                                       </tr>
                                                </table>
                                           </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="selecttop1" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="16" Name="MaDMTT" 
                                                    QueryStringField="loaithongtin" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:DataList ID="DataList2" runat="server" DataKeyField="MaTT" 
                                            DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                                <table align="left" cellpadding="0" cellspacing="0" style="width: 100%">
                                                   <tr>
                                                    <td valign="top">
                                                     <asp:Image ID="Image2" runat="server" ImageAlign="Middle" ImageUrl="~/images/icon.gif"></asp:Image>
                                                    </td>
                                                    <td valign="middle">
                                                   <%-- <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("SoLuoc") %>' NavigateUrl="~/Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"></asp:HyperLink>--%>
                                                   <%--<a href="<%#"Chitietthongtin.aspx?MaTT=<%#Eval("MaTT")" %>"><%# Eval("SoLuoc") %></a>--%>
                                                   <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"><%# Eval("TenTT") %></a>
                                                    </td>
                                                   </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="16" Name="MaDMTT" 
                                                    QueryStringField="loaithongtin" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                   <td class="line"></td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </td>
                     </tr>
                  </table>
            </div>
            <%# Eval("TenTT") %>
           <div>
               <table cellpadding="0" cellspacing="0" class="tin">
                   <tr>
                      <td>
                          <table cellpadding="0" cellspacing="0">
                             <tr>
                                <td align="center" class="style1">
                                   KINH TẾ
                                </td>
                                <td >
                                    <%--Ẩm thực--%></td>
                                <td>
                                    &nbsp;</td>
                             </tr>
                          </table>
                      </td>
                   </tr>
                   <tr>
                       <td>
                          <table align="left" cellpadding="0" cellspacing="0" style="width: 100%">
                              <tr>
                                 <td>
                                    <asp:DataList ID="DataList3" runat="server" DataKeyField="MaTT" 
                                         DataSourceID="SqlDataSource3" Width="100%">
                                        <ItemTemplate>
                                           <table cellpadding="0" cellspacing="0" style="width:100%">
                                               <tr>
                                                   <td>
                                                     <div class="ndKhung">
                                                         <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl='<%# Eval("Anh") %>' Width="190px" Height='135px'></asp:Image>
                                                         <div class="tieude">
                                                             <asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" ></asp:Label>
                                                          </div>
                                                          <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                          <div class="ndChinh">
                                                              <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                          </div>
                                                          <div align="right">
                                                              <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" >>>chi tiết</a>
                                                          </div>
                                                          <div class="line">
                                                          </div>
                                                     </div>
                                                   </td>
                                               </tr>
                                           </table>
                                        </ItemTemplate>
                                     </asp:DataList>
                                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                         SelectCommand="selecttop1" SelectCommandType="StoredProcedure">
                                         <SelectParameters>
                                             <asp:QueryStringParameter DefaultValue="15" Name="MaDMTT" 
                                                 QueryStringField="loaithongtin" Type="Int32" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                                 </td>
                              </tr>
                              <tr>
                                 <td></td>
                              </tr>
                              <tr>
                                  <td>
                                      <asp:DataList ID="DataList4" runat="server" DataKeyField="MaTT" 
                                          DataSourceID="SqlDataSource4" Width="100%">
                                          <ItemTemplate>
                                             <table align="left" cellpadding="0" cellspacing="0" width="100%">
                                                 <tr>
                                                     <td valign="top">
                                                         <asp:Image ID="Image4" runat="server" ImageUrl="~/images/icon.gif"></asp:Image>
                                                     </td>
                                                     <td valign="top">
                                                         <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"><%# Eval("TenTT") %></a>
                                                     </td>
                                                 </tr>
                                             </table>
                                          </ItemTemplate>
                                      </asp:DataList>
                                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                          SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                          <SelectParameters>
                                              <asp:QueryStringParameter DefaultValue="15" Name="MaDMTT" 
                                                  QueryStringField="loaithongtin" Type="Int32" />
                                          </SelectParameters>
                                      </asp:SqlDataSource>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="line">
                                  </td>
                              </tr>
                              <tr><td></td></tr>
                          </table>
                       </td>
                   </tr>
               </table>
           </div>
            <%--<img src="image/tit.gif" height="19px" width="29px" />--%>
              <div>
                   <table cellpadding="0" cellspacing="0" class="tin">
                        <tr>
                           <td>
                              <table cellpadding="0" cellspacing="0">
                                  <tr>
                                     <td class="style1" align="center">
                                         GIÁO DỤC
                                     </td>
                                     <td>
                                         <%# Eval("TenTT") %>
                                     </td>
                                     <td> &nbsp</td>
                                  </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                           <td>
                              <table align="left" cellpadding="0" cellspacing="0" width="100%">
                                   <tr>
                                       <td>
                                           <asp:DataList ID="DataList5" runat="server" DataKeyField="MaTT" 
                                               DataSourceID="SqlDataSource5" Width="100%">
                                               <ItemTemplate>
                                                 <table cellpadding="0" cellspacing="0" style="width: 100%">
                                                  <tr>
                                                   <td>
                                                   <asp:Image ID="Image5" runat="server" CssClass="imgHost" ImageUrl='<%# Eval("Anh") %>' Height="135px" Width="190px"></asp:Image>
                                                   <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                    <div class="ndChinh"><asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                                    <div align="right">
                                                         <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>">>>chi tiết</a>
                                                    </div>
                                                    <div class="line">
                                                    </div>
                                                   </td>
                                                   </tr>
                                                  </table>
                                               </ItemTemplate>
                                           </asp:DataList>
                                           <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="selecttop1" SelectCommandType="StoredProcedure">
                                               <SelectParameters>
                                                   <asp:QueryStringParameter DefaultValue="14" Name="MaDMTT" 
                                                       QueryStringField="loaithongtin" Type="Int32" />
                                               </SelectParameters>
                                           </asp:SqlDataSource>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td></td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <asp:DataList ID="DataList6" runat="server" DataKeyField="MaTT" 
                                               DataSourceID="SqlDataSource6" Width="100%">
                                               <ItemTemplate>
                                                  <table align="left" cellpadding="0" cellspacing="0" style="width: 100%">
                                                       <tr>
                                                           <td valign="top">
                                                              <asp:Image ID="Image4" runat="server" ImageUrl="~/images/icon.gif"></asp:Image>
                                                           </td>
                                                           <td valign="top">
                                                                <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"><%# Eval("TenTT") %></a>
                                                           </td>
                                                        </tr>
                                                   </table>
                                               </ItemTemplate>
                                           </asp:DataList>
                                           <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                               <SelectParameters>
                                                   <asp:QueryStringParameter DefaultValue="14" Name="MaDMTT" 
                                                       QueryStringField="loaithongtin" Type="Int32" />
                                               </SelectParameters>
                                           </asp:SqlDataSource>
                                       </td>
                                   </tr>
                              </table>
                           </td>
                        </tr>
                        <tr><td class="line"></td></tr>
                   </table>
              </div>
            <%--góp ý--%>
               <div>
                   <table cellpadding="0" cellspacing="0" class="tin">
                        <tr>
                           <td>
                              <table cellpadding="0" cellspacing="0">
                                  <tr>
                                     <td align="center" class="style1">
                                        VĂN HÓA - LỄ HỘI
                                     </td>
                                     <td>
                                         <%--<img src="image/tit.gif" height="19px" width="29px" />--%>
                                     </td>
                                     <td>&nbsp</td>
                                  </tr>
                              </table>
                           </td>
                        </tr>
                        <tr>
                            <td>
                                <table align="left" cellpadding="0" cellspacing="0" width="100%">
                                   <tr>
                                      <td>
                                         <asp:DataList ID="DataList7" runat="server" DataKeyField="MaTT" 
                                              DataSourceID="SqlDataSource7" Width="100%">
                                             <ItemTemplate>
                                                   <table cellpadding="0" cellspacing="0" style="width: 100%">
                                                        <tr>
                                                           <td>
                                                               <div class="ndKhung">
                                                                 <asp:Image ID="Image6" runat="server" CssClass="image" ImageUrl='<%# Eval("Anh") %>' Height="135px" Width="190px"></asp:Image>
                                                                 <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                                 <div>
                                                                 <asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" />
                                                                 </div>
                                                                 <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                                 <div align="right">
                                                                     <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" >>>chi tiết</a>
                                                                 </div>
                                                               </div>
                                                               <div class="line"></div>
                                                            </td>
                                                         </tr>
                                                    </table>
                                             </ItemTemplate>
                                          </asp:DataList>
                                          <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                              SelectCommand="selecttop1" SelectCommandType="StoredProcedure">
                                              <SelectParameters>
                                                  <asp:QueryStringParameter DefaultValue="13" Name="MaDMTT" 
                                                      QueryStringField="loaithongtin" Type="Int32" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </td>
                                   </tr>
                                   <tr>
                                       <td></td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <asp:DataList ID="DataList8" runat="server" DataKeyField="MaTT" 
                                               DataSourceID="SqlDataSource8" Width="100%">
                                               <ItemTemplate>
                                                    <table align="left" cellpadding="0" cellspacing="0" style="width: 100%">
                                                         <tr>
                                                              <td valign="top">
                                                              <asp:Image ID="Image4" runat="server" ImageUrl="~/images/icon.gif"></asp:Image>
                                                              </td>
                                                             <td valign="top">
                                                                <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"><%# Eval("TenTT") %></a>
                                                             </td>
                                                          </tr>
                                                     </table>
                                               </ItemTemplate>
                                           </asp:DataList>
                                           <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                               <SelectParameters>
                                                   <asp:QueryStringParameter DefaultValue="13" Name="MaDMTT" 
                                                       QueryStringField="loaithongtin" Type="Int32" />
                                               </SelectParameters>
                                           </asp:SqlDataSource>
                                       </td>
                                   </tr>
                                   <tr><td class="line"></td></tr>
                                   <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                   </table>
               </div>
               <%--Ẩm thực--%>
               <div>
                   <div>
                       <table cellpadding="0" cellspacing="0" class="tin">
                            <tr>
                                <td >
                                  <table>
                                      <tr>
                                         <td align="center" class="style1">
                                          ẨM THỰC
                                         </td>
                                         <td >
                                          <%--<img src="image/tit.gif" height="19px" width="29px" />--%>
                                         </td>
                                          <td>&nbsp</td>
                                       </tr>
                                    </table>
                                 </td>
                            </tr>
                            <tr>
                               <td>
                                   <table align="left" cellpadding="0" cellspacing="0" style="width: 100%">
                                       <tr>
                                           <td>
                                               <asp:DataList ID="DataList9" runat="server" DataKeyField="MaTT" 
                                                   DataSourceID="SqlDataSource9" Width="100%">
                                                   <ItemTemplate>
                                                      <table cellpadding="0" cellspacing="0" style="width: 100%">
                                                           <tr>
                                                              <td>
                                                                 <div class="ndKhung">
                                                                  <asp:Image ID="Image7" runat="server" CssClass="image" ImageUrl='<%# Eval("Anh") %>' Height="135px" Width="190px"></asp:Image>
                                                                  <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                                  <div> <asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                                  <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                                  <div align="right">
                                                                       <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" >>>chi tiết</a>
                                                                  </div>
                                                                 </div>
                                                              </td>
                                                            </tr>
                                                      </table>
                                                   </ItemTemplate>
                                               </asp:DataList>
                                               <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                   SelectCommand="selecttop1" SelectCommandType="StoredProcedure">
                                                   <SelectParameters>
                                                       <asp:QueryStringParameter DefaultValue="27" Name="MaDMTT" 
                                                           QueryStringField="loaithongtin" Type="Int32" />
                                                   </SelectParameters>
                                               </asp:SqlDataSource>
                                           </td>
                                       </tr>
                                       <tr><td></td></tr>
                                       <tr>
                                           <td>
                                              <asp:DataList ID="DataList10" runat="server" DataKeyField="MaTT" 
                                                   DataSourceID="SqlDataSource10">
                                                  <ItemTemplate>
                                                      <table>
                                                          <tr>
                                                              <td valign="top">
                                                                 <asp:Image ID="Image8" runat="server" ImageUrl="~/images/icon.gif" ImageAlign="Middle"></asp:Image>
                                                              </td>
                                                              <td valign="top">
                                                                <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>"><%# Eval("TenTT") %></a>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </ItemTemplate>
                                               </asp:DataList>
                                               <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                   SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                                   <SelectParameters>
                                                       <asp:QueryStringParameter DefaultValue="27" Name="MaDMTT" 
                                                           QueryStringField="loaithongtin" Type="Int32" />
                                                   </SelectParameters>
                                               </asp:SqlDataSource>
                                           </td>
                                       </tr>
                                       <tr>
                                          <td class="line"></td>
                                       </tr>
                                       </table>
                               </td>
                            </tr>
                       </table>
                   </div>
               </div>
        </div>
        <%--góp ý--%>
        <table >
                <tr>
                    <td align="center">
                     <asp:Image ID="Image2" runat="server" ImageUrl="~/images/imgCenter_Gopy.gif"
                                
                            Style="position: relative; top: 0px; left: 0px; width: 606px; height: 29px;" />
                     </td>
                      
                         
                           </tr>
                         </table>
                         <div>
                             <table style="width:100%;">
                                 <tr>
                                     <td class="style2">
                                         <asp:Label ID="Label3" runat="server" Text="Họ tên:"></asp:Label>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="txthoten" runat="server" Width="346px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="style2">
                                         <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="txtemail" runat="server" Width="451px"></asp:TextBox>
                                     </td>
                                 </tr>
                                 <tr >
                                     <td class="style2">
                                         <asp:Label ID="Label5" runat="server" Text="Nội dung:"></asp:Label>
                                     </td>
                                     <td>
                                         <textarea id="txtnoidung" cols="20" name="S1" rows="2" runat="server" 
                                             style="width:500px; height:350px"></textarea></td>
                                 </tr>
                                 <tr align="center">
                                 <td></td>
                                 <td>
                                      <asp:Button ID="Button1" runat="server" Text="Gửi" Width="100px" 
                                          Style="position:relative" onclick="Button1_Click"  />
                                     <asp:Button ID="Button3" runat="server" Text="Hủy bỏ" Width="100px" />
                                     </td>
                                 </tr>
                             </table>
                         </div>
      </div>
<script language="javascript" type="text/javascript">
<!--

function TextArea1_onclick() {

}

// -->
</script>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 190px;
            height: 21px;
            background-color:#0084f3;
            font-family: Arial;
            font-size: 8pt;
            font-weight: 700;
            color: #ffffff;
        }
        #TextArea1
        {
            height: 108px;
            width: 503px;
        }
        .style2
        {
            width: 76px;
        }
    </style>

</asp:Content>

