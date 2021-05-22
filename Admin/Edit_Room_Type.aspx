<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Edit_Room_Type.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Edit_Room_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <script>     
        function successalert() {
            swal("Congratulations!", "Data Updated successfully", "success");
        }
        function erroralert() {
            swal("Oops!", "something went wrong", "error");
        }
     </script>
        <p class="text-danger"> 
            <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
        </p>
        <p class="text-success"> 
            <asp:Literal ID="SuccessMessage" runat="server"></asp:Literal>
        </p>
  <h2>Update Room Type</h2>
  
    <div class="form-group">
      <label for="txtName">Room Type Name:</label>
        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Room Type Name" runat="server"></asp:TextBox>
      
    </div>
    
      <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Submit" OnClick="btnSubmit_Click" />
      <a href="List_Room_Type.aspx" class="btn btn-info">See List of Room Type</a>
  
</div>

</asp:Content>
