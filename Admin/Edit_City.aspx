<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Edit_City.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Edit_City" %>
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
  <h2>Edit City</h2>
  
    <div class="form-group">
      <label for="txtName">City Name:</label>
        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="City Name" runat="server"></asp:TextBox>
      
    </div>
    
      <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Submit" OnClick="btnSubmit_Click" />
      <a href="List_City.aspx" class="btn btn-info">Back</a>
  
</div>
</asp:Content>
