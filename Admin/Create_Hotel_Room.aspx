﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Create_Hotel_Room.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Create_Hotel_Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script>     
        function successalert() {
            swal("Congratulations!", "Data inserted successfully", "success");
            //swal({
            //    title: 'Congratulations',
            //    text: 'Data inserted successfully',
            //    type: 'success'

            //});
        }
        function erroralert() {
            swal("Oops!", "please enter valid price", "error");
        }
     </script>
    <div class="card w-50">
         
  <div class="card-header bg-primary text-white">
   
      <p class="p-1">  Hotel Room Create </p>
                             
  </div>

  <div class="card-body">
      <p class="text-success">
        <asp:Literal runat="server" ID="Msg" />
        </p>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

     <div class="form-horizontal">
        
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="drpHotel" CssClass="col-md-4 control-label">Hotel Name</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList ID="drpHotel" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="drpHotel"
                    CssClass="text-danger" ErrorMessage="The Hotel name is required." InitialValue="none" />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRoomNumber" CssClass="col-md-4 control-label">Room Number</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtRoomNumber" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRoomNumber"
                    CssClass="text-danger" ErrorMessage="The Room Number field is required." />
                
            </div>
        </div>

       

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPrice" CssClass="col-md-4 control-label">Room Price</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPrice"
                    CssClass="text-danger" ErrorMessage="The Price field is required." />
                
            </div>
        </div>


         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="drpRoomType" CssClass="col-md-4 control-label">Room Type</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList ID="drpRoomType" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="drpRoomType"
                    CssClass="text-danger" ErrorMessage="The Room Type is required." InitialValue="none" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" ID="bntSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="bntSubmit_Click" />
                <a href="List_Hotel_Room.aspx" class="btn btn-warning ">See Hotel Room List</a>
            </div>

        </div>
    </div>
    
  </div>
</div>
    

</asp:Content>
