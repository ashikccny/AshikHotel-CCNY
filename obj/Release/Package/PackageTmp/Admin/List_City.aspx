<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_City.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="well">
        <a href="Create_City.aspx" class="btn btn-primary">Create</a></div>
    <div>   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" style="margin-top: 0px" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="City_ID" HeaderText="City ID" />
                <asp:BoundField DataField="City_Name" HeaderText="City Name" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("City_ID", "Edit_City.aspx?id={0}") %>' Text="Edit"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# Eval("City_ID", "Delete_City.aspx?id={0}") %>' Text="Delete"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
