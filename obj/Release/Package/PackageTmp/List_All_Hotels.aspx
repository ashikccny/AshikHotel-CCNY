<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List_All_Hotels.aspx.cs" Inherits="Ashik_Hotel_Reservation.List_All_Hotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>  List of All Hotels  </h1>
    <hr />  
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table style ="width:100%">
                <tr>
                    <td>  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Image_URL","Hotel_Image/{0}") %>' Width="400px" />  </td>
                </tr>
                <tr>

                    <td>  
                        <center>
                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-info" runat="server" Text='<%# Bind("Hotel_Name") %>' CommandName="Hotel" CommandArgument='<%# Bind("Hotel_ID") %>'></asp:LinkButton>

                        </center>
                    </td>
                </tr>
            </table>
             
        </ItemTemplate>

    </asp:DataList>
    <br />  

</asp:Content>
