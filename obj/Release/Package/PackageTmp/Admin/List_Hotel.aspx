<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_Hotel.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="well">
         <a href="Create_Hotel.aspx" class="btn btn-primary">Create Hotel</a>
    </div>   
        <div>   

        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" style="margin-top: 0px" ShowHeaderWhenEmpty="True" EmptyDataText="Your Hotel Table is Empty">
            <Columns>
                <asp:BoundField DataField="Hotel_ID" HeaderText="Hotel ID" />
                <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
                <asp:BoundField DataField="Address_Hotel" HeaderText="Hotel Address" />
                <asp:BoundField DataField="State" HeaderText="State" />
                <asp:BoundField DataField="Phone" HeaderText="Hotel Phone Number" />
                <asp:BoundField DataField="Hotel_Descerption" HeaderText="Hotel Description" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" />
                <asp:BoundField DataField="City_ID" HeaderText="City" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("Hotel_ID", "Edit_Hotel.aspx?id={0}") %>' Text="Edit"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# Eval("Hotel_ID", "Delete_Hotel.aspx?id={0}") %>' Text="Delete"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
