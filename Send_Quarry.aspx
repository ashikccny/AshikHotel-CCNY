<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Send_Quarry.aspx.cs" Inherits="Ashik_Hotel_Reservation.Send_Quarry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
            swal("Oops!", "something went wrong", "error");
        }
    </script>
    <div class="card w-50">
         
  <div class="card-header bg-primary text-white">
   
      <p class="p-1">  Send Message </p>
                             
  </div>

  <div class="card-body">
      <p class="text-success">
        <asp:Literal runat="server" ID="Msg" />
        </p>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

     <div class="form-horizontal">
        
          <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtHotel" CssClass="col-md-4 control-label">Hotel Name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtHotel" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHotel"
                    CssClass="text-danger" ErrorMessage="This field is required." />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSender" CssClass="col-md-4 control-label">Sender Name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtSender" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSender"
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
            <asp:Label runat="server" AssociatedControlID="txtMessage" CssClass="col-md-4 control-label">Message</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage"
                    CssClass="text-danger" ErrorMessage="The Message field is required." />
                
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" ID="bntSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="bntSubmit_Click" />
                <a href="List_All_Hotels.aspx" class="btn btn-warning ">See Hotel List</a>
            </div>

        </div>
    </div>
    
  </div>
</div>
</asp:Content>
