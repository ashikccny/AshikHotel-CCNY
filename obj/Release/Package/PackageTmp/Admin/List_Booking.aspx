<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_Booking.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>    
        List All Booking Informations
    </h1>
    <hr />
    <asp:Button ID="btnCancelBooking" CssClass="btn btn-warning" runat="server" Text="Show Cancel Booking" OnClick="btnCancelBooking_Click" />
    <asp:Button ID="btnRefresh" CssClass="btn btn-primary" runat="server" Text="Refresh Booking" OnClick="btnRefresh_Click" />
    <hr />  
    <asp:GridView ID="gvBooking" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="gvBooking_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="Booking_ID" HeaderText="Booking ID" />
            <asp:BoundField DataField="User_Name" HeaderText="User Name" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
            <asp:BoundField DataField="Total_Price" HeaderText="Total Price" />
            <asp:BoundField DataField="Booking_Status" HeaderText="Booking Status" />
            <asp:TemplateField HeaderText="Edit Booking">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("Booking_ID", "Edit_Booking.aspx?id={0}") %>' Text="Cancel Booking"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" EmptyDataText="No Data Found" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="Booking_ID" HeaderText="Booking ID" />
            <asp:BoundField DataField="User_Name" HeaderText="User Name" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
            <asp:BoundField DataField="Total_Price" HeaderText="Total Price" />
            <asp:BoundField DataField="Booking_Status" HeaderText="Booking Status" />
        </Columns>
    </asp:GridView>

</asp:Content>
