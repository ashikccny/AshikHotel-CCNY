<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Delete_Room_Type.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Delete_Room_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>     
        function successalert() {
            swal("Congratulations!", "Data Deleted successfully", "success");
        }
        function erroralert() {
            swal("Oops!", "something went wrong", "error");
        }
    </script>
     <div class="container">
        <p class="text-danger"> 
            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
        </p>
        <p class="text-success"> 
            <asp:Literal ID="SuccessMessage" runat="server"></asp:Literal>
        </p>
  <h2>Delete Room Type</h2>
         <hr /> 
         <h3> Are you sure to Delete this Room Type? </h3>
       

        <div class="form-group">
        <label for="txtName">Room Type</label>
        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Room Type" runat="server"></asp:TextBox>
      
     </div>
    
      <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Delete" OnClick="btnSubmit_Click"/>
      <a href="List_Room_Type.aspx" class="btn btn-info">See Room Type List</a>
 
</div>
</asp:Content>
