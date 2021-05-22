<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Edit_Booking.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Edit_Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script>     
        function successalert() {
            swal("Congratulations!", "Email send successfully", "success");
            
        }
        function erroralert() {
            swal("Oops!", "something went wrong", "error");
        }
</script>
</asp:Content>
