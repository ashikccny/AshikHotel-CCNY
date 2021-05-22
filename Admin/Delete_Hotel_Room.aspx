<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Delete_Hotel_Room.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Delete_Hotel_Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container">
        <p class="text-danger"> 
            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
        </p>
        <p class="text-success"> 
            <asp:Literal ID="SuccessMessage" runat="server"></asp:Literal>
        </p>
  <h2>Delete Hotel Room</h2>
         <hr /> 
         <h3> Are you sure to Delete this? </h3>
    <div class="form-group">
      <label for="txtName">Hotel Room ID:</label>
        <asp:TextBox ID="txtID" CssClass="form-control" placeholder="Hotel Room ID" runat="server"></asp:TextBox>
      
    </div>
    
      <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Delete" OnClick="btnSubmit_Click"/>
      <a href="List_Hotel_Room.aspx" class="btn btn-info">See Hotel Room List</a>
 
</div>

</asp:Content>
