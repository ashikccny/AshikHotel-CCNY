<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="List_Hotel_Room.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.List_Hotel_Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class ="container">   
          
        
        <h2>    
            List of All Hotel Room
        </h2>
        <div class="well">
         <a href="Create_Hotel_Room.aspx" class="btn btn-primary">Create Hotel Room</a>
        </div> 

    
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Data Found" ShowFooter="True" ShowHeaderWhenEmpty="True" CssClass="table table-striped">
        <Columns>
            <asp:BoundField DataField="Hotel_Room_ID" HeaderText="Hotel Room ID" />
            <asp:BoundField DataField="HName" HeaderText="Hotel Name" />
            <asp:BoundField DataField="No_of_room" HeaderText="Number of Rooms" />
            <asp:BoundField DataField="Room_Price" HeaderText="Room Price" DataFormatString="${0:###.00}" />
            <asp:BoundField DataField="RoomType" HeaderText="Room Type" />
             <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" NavigateUrl='<%# Eval("Hotel_Room_ID", "Edit_Hotel_Room.aspx?id={0}") %>' Text="Edit"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# Eval("Hotel_Room_ID", "Delete_Hotel_Room.aspx?id={0}") %>' Text="Delete"></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>

        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
