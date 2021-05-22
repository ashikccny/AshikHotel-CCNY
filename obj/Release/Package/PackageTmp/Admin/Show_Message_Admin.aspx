<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Show_Message_Admin.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Show_Message_Admin" %>
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
    <div class="card w-50">
         
  <div class="card-header bg-primary text-white">
   
      <p class="p-1">  Show Admin Message </p>
                             
  </div>

  <div class="card-body">
      <p class="text-success">
        <asp:Literal runat="server" ID="Msg" />
        </p>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

     <div class="form-horizontal">
        

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-4 control-label">Hotel Name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
                
            </div>
        </div>

       
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSenderName" CssClass="col-md-4 control-label">Sender Name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtSenderName" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSenderName"
                    CssClass="text-danger" ErrorMessage="The Sender Name field is required." />
                
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-4 control-label">Email</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPhone" CssClass="col-md-4 control-label">Phone</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDate" CssClass="col-md-4 control-label">Date of Send</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtDate" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDate"
                    CssClass="text-danger" ErrorMessage="The Date field is required." />
                
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtMessage" CssClass="col-md-4 control-label">Message</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Height="200px" Width="521px"/> 
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage"
                    CssClass="text-danger" ErrorMessage="The Message field is required." />
                
            </div>
        </div>
        

        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" ID="bntSubmit" Text="Delete" CssClass="btn btn-primary" OnClick="bntSubmit_Click" />
                <a href="Show_Quarry_Admin.aspx" class="btn btn-warning ">See Message Quarry</a>
            </div>

        </div>
    </div>
    
  </div>
</div>
    
</asp:Content>
