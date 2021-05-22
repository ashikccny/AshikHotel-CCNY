<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Display_Hotel.aspx.cs" Inherits="Ashik_Hotel_Reservation.Display_Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" CssClass="table table-stript" OnRowDataBound="gv_RowDataBound" DataKeyNames="Hotel_ID" OnRowCommand="gv_RowCommand">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table class="table table-striped">
                        <tr>
                            <td align="center">    
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CommandArgument ='<%# Bind("Hotel_ID") %>' CommandName="Message">Send Message to Admin</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>    
                                <div>   
                                    <h2>    
                                        <asp:Label ID="LblHotel" runat="server" Text='<%# Bind("Hotel_Name") %>'></asp:Label>
                                    </h2>
                                </div>
                                <div>   
                                    <table>
                                        <tr>
                                            <td style="width:33%" valign="top" align="left">    
                                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Bind("Image_URL","Hotel_Image/{0}") %>' Width="200px" />
                                            </td>
                                            <td style="width:33%" valign="top" align="left">    
                                                <asp:Label ID="LblDesc" runat="server" Text='<%# Bind("Hotel_Descerption") %>'></asp:Label>
                                            </td>
                                             <td style="width:33%" valign="top" align="left">    
                                                <div>   
                                    
                                                    <h2>  Address </h2>  
                                        
                                                </div>
                                                <div>
                                                    <asp:Label ID="LblAddress" runat="server" Text='<%# Bind("Address_Hotel") %>'></asp:Label><br />    
                                                    <asp:Label ID="LblPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label><br />  
                                                    <asp:Label ID="LblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label><br />  
                                                    <asp:Label ID="LblState" runat="server" Text='<%# Bind("State") %>'></asp:Label><br />  
                                                    <asp:Label ID="LblCity" runat="server" Text='<%# Bind("City_ID") %>'></asp:Label><br /> 
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                       
                        
                        <tr>
                            <td>
                                <div>   
                                    <h2>  Rooms Information </h2>       
                                </div>

                                <div>
                                    <asp:DataList ID="lstRooms" runat="server" RepeatColumns="4">
                                         <ItemTemplate>
                                                    Room Type:
                                                    <asp:Label ID="LblRoomType" runat="server" Text='<%# Bind("RoomType_Name") %>'></asp:Label>
                                                    <br />
                                                    Room Number:
                                                    <asp:Label ID="LblNumberOfRoom" runat="server" Text='<%# Bind("No_of_room") %>'></asp:Label>
                                                    <br />
                                                    Price:
                                                    <asp:Label ID="LblPrice" runat="server" Text='<%# Bind("Room_Price", "{0:###.00}") %>'></asp:Label>
                                                    <br />
                                                    <br />
                                                </ItemTemplate>
                                    </asp:DataList>
                                    
                                    <hr />  
                                    <h3>Room Images</h3>
                                    <asp:DataList ID="lstImage" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                                        
                                                <ItemTemplate>
                                                    <asp:Image id="himage" runat="server" Height="80px" ImageUrl='<%# Bind("Image_URL", "Hotel_Image/{0}") %>' Width="80px"/>
                                                </ItemTemplate>
                                            
                                    </asp:DataList>
                                    


                                    <br />
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-primary" CommandArgument='<%# Bind("Hotel_ID") %>' CommandName="Booking">Booking Room</asp:LinkButton>
                                    <a runat="server" class="btn btn-warning" href="~/Default.aspx">Back</a>



                                </div>
                            </td>
                        </tr>


                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
  </asp:GridView>
</asp:Content>
