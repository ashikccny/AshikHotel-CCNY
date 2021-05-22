<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Show_Quarry_Admin.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Show_Quarry_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container">   
        <div>   
            <asp:Label ID="Label1" runat="server" Text="Inquarry"></asp:Label>
        </div>

        <div>   
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" EmptyDataText="No Records Found" ShowHeaderWhenEmpty="True">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Message_ID" DataNavigateUrlFormatString="~/Admin/Show_Message_Admin.aspx?id={0}" DataTextField="Sender_Name" HeaderText="Sender Name" />
                    <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
                    <asp:BoundField DataField="Sender_Email" HeaderText="Sender Email" />
                    <asp:BoundField DataField="Send_Date" HeaderText="Send Date" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

    

</asp:Content>
