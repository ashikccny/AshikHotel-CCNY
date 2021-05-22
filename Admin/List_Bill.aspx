<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_Bill.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well">   
        <h1>    
            All Bill Informations
        </h1>
    </div>

    <div>   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="Bill_ID" HeaderText="Bill ID" />
                <asp:BoundField DataField="Booking_ID" HeaderText="Booking ID" />
                <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
                <asp:BoundField DataField="User_Name" HeaderText="User Name" />
                <asp:TemplateField HeaderText="View ">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("Bill_ID", "View_Bill.aspx?id={0}") %>'>View</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
