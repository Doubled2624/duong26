<%@ Page Language="C#" MasterPageFile="~/Trangchu.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 14px">
        <div>
            <div style="color:Blue; font-size:18px; font-weight:bold">TIN TỨC NỔI BẬT</div>
            <div style="height:1px;overflow:hidden;background:black;margin-top:5px; width:100%"></div>
            <div>
                 <table cellpadding="0" cellspacing="0" class="tin">
                     <tr>
                         <td>
                            <table>
                               <tr>
                                 <td class="menu" align="center">
                                   CHÍNH TRỊ - XÃ HỘI
                                 </td>
                                    <td class="menu001">
                                        <img src="image/tit.gif" height="19px" width="29px" />
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
                                                            <asp:Image ID="Image1" runat="server" CssClass="image"  Text='<%# Eval("Anh") %>' Height="150px" Width="190px"></asp:Image> 
                                                            <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                             <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                             <div class="ndChinh"><asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                                             </div>
                                                             <div style="text-align:right">
                                                              <div align="right">
                                                                <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" style="color:#999966; font-size:16px">>>chi tiết</a>
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
                                                <asp:QueryStringParameter DefaultValue="6" Name="MaDMTT" 
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
                                                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("SoLuoc") %>' NavigateUrl="#"></asp:HyperLink>
                                                   
                                                    </td>
                                                   </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:QueryStringParameter DefaultValue="6" Name="MaDMTT" 
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
           <%-- bản tin2--%>
           <div>
               <table cellpadding="0" cellspacing="0" class="tin">
                   <tr>
                      <td>
                          <table cellpadding="0" cellspacing="0">
                             <tr>
                                <td align="center" class="menu">
                                   KINH TẾ
                                </td>
                                <td class="menu001">
                                    <img src="image/tit.gif" height="19px" width="29px" /></td>
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
                                                         <asp:Image ID="Image3" runat="server" CssClass="image" ImageUrl='<%# Eval("Anh") %>' Width="190px" Height='150px'></asp:Image>
                                                         <div class="tieude">
                                                             <asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" ></asp:Label>
                                                          </div>
                                                          <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                          <div class="ndChinh">
                                                              <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                          </div>
                                                          <div align="right">
                                                              <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" style="color:#999966; font-size:16px">>>chi tiết</a>
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
                                             <asp:QueryStringParameter DefaultValue="7" Name="MaDMTT" 
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
                                                         <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("SoLuoc") %>' NavigateUrl="#"></asp:HyperLink>
                                                       
                                                     </td>
                                                 </tr>
                                             </table>
                                          </ItemTemplate>
                                      </asp:DataList>
                                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                          SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                          <SelectParameters>
                                              <asp:QueryStringParameter DefaultValue="7" Name="MaDMTT" 
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
           <%--bản tin 3--%>
              <div>
                   <table cellpadding="0" cellspacing="0" class="tin">
                        <tr>
                           <td>
                              <table cellpadding="0" cellspacing="0">
                                  <tr>
                                     <td class="menu" align="center">
                                         GIÁO DỤC
                                     </td>
                                     <td class="menu001">
                                        <img src="image/tit.gif" border="0" height="19" width="29" />
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
                                                   <asp:Image ID="Image5" runat="server" CssClass="imgHost" ImageUrl='<%# Eval("Anh") %>' Height="150px" Width="190px"></asp:Image>
                                                   <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                   <div><asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                    <div class="ndChinh"><asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' /></div>
                                                    <div align="right">
                                                         <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" style="color:#999966; font-size:16px">>>chi tiết</a>
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
                                                   <asp:QueryStringParameter DefaultValue="8" Name="MaDMTT" 
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
                                                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#" Text='<%# Eval("SoLuoc") %>'></asp:HyperLink>
                                                           </td>
                                                        </tr>
                                                   </table>
                                               </ItemTemplate>
                                           </asp:DataList>
                                           <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                               <SelectParameters>
                                                   <asp:QueryStringParameter DefaultValue="8" Name="MaDMTT" 
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
              <%--bản tin 4--%>
               <div>
                   <table cellpadding="0" cellspacing="0" class="tin">
                        <tr>
                           <td>
                              <table cellpadding="0" cellspacing="0">
                                  <tr>
                                     <td align="center" class="menu">
                                        VĂN HÓA - LỄ HỘI
                                     </td>
                                     <td>
                                         <img src="image/tit.gif" height="19px" width="29px" />
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
                                                                 <asp:Image ID="Image6" runat="server" CssClass="image" ImageUrl='<%# Eval("TenTT") %>' Height="150px" Width="190px"></asp:Image>
                                                                 <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                                 <div>
                                                                 <asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" />
                                                                 </div>
                                                                 <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                                 <div align="right">
                                                                     <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" style="color:#999966; font-size:16px">>>chi tiết</a>
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
                                                  <asp:QueryStringParameter DefaultValue="4" Name="MaDMTT" 
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
                                                                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="#" Text='<%# Eval("SoLuoc") %>' ></asp:HyperLink>
                                                             </td>
                                                          </tr>
                                                     </table>
                                               </ItemTemplate>
                                           </asp:DataList>
                                           <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                               SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                               <SelectParameters>
                                                   <asp:QueryStringParameter DefaultValue="4" Name="MaDMTT" 
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
                                         <td align="center" class="menu">
                                          ẨM THỰC
                                         </td>
                                         <td class="menu001">
                                          <img src="image/tit.gif" height="19px" width="29px" />
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
                                                                  <asp:Image ID="Image7" runat="server" CssClass="image" ImageUrl='<%# Eval("Anh") %>' Height="150px" Width="190px"></asp:Image>
                                                                  <div class="tieude"><asp:Label ID="TenTTLabel" runat="server" Text='<%# Eval("TenTT") %>' Font-Bold="true" Font-Size="18px" /></div>
                                                                  <div> <asp:Label ID="NgayGuiLabel" runat="server" Text='<%# Eval("NgayGui") %>' ForeColor="#999966" /></div>
                                                                  <asp:Label ID="SoLuocLabel" runat="server" Text='<%# Eval("SoLuoc") %>' />
                                                                  <div align="right">
                                                                       <a href="Chitietthongtin.aspx?MaTT=<%#Eval("MaTT") %>" style="color:#999966; font-size:16px">>>chi tiết</a>
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
                                                       <asp:QueryStringParameter DefaultValue="10" Name="MaDMTT" 
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
                                                                <asp:HyperLink ID="HyperLink9" runat="server" Text='<%# Eval("SoLuoc") %>' NavigateUrl="#"></asp:HyperLink>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </ItemTemplate>
                                               </asp:DataList>
                                               <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                                                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                   SelectCommand="selecttop2" SelectCommandType="StoredProcedure">
                                                   <SelectParameters>
                                                       <asp:QueryStringParameter DefaultValue="10" Name="MaDMTT" 
                                                           QueryStringField="loaithongtin" Type="Int32" />
                                                   </SelectParameters>
                                               </asp:SqlDataSource>
                                           </td>
                                       </tr>
                                       <tr>
                                          <td class="line"></td>
                                       </tr>
                                       <tr>
                                           <td></td>
                                       </tr>
                                   </table>
                               </td>
                            </tr>
                       </table>
                   </div>
               </div>
        </div>
      </div>
</asp:Content>

