<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_Hotel_Image.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_Hotel_Image" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="well">
         <a href="Create_Hotel_Image.aspx" class="btn btn-primary">Create Hotel Room Image</a>
    </div>   
        <div>   

        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" style="margin-top: 0px" ShowHeaderWhenEmpty="True" EmptyDataText="Your Hotel Table is Empty">
            <Columns>
                <asp:BoundField DataField="Image_ID" HeaderText="Image ID" />
                <asp:BoundField DataField="hotelname" HeaderText="Hotel Name" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image_URL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Image_URL", "~/Hotel_Image/{0}") %>' Width="100px" />
                        <br />
                        
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("Image_ID", "Edit_Hotel_Image.aspx?id={0}") %>' Text="Edit"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# Eval("Image_ID", "Delete_Hotel_Image.aspx?id={0}") %>' Text="Delete"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
