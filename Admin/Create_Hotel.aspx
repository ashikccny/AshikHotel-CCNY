<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Create_Hotel.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Create_Hotel" %>
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
            swal("Oops!", "something went wrong", "error");
        }
    </script>
    <div class="card w-50">
         
  <div class="card-header bg-primary text-white">
   
      <p class="p-1">  Hotel Registration </p>
                             
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
            <asp:Label runat="server" AssociatedControlID="txtAddress" CssClass="col-md-4 control-label">Hotel Address</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                    CssClass="text-danger" ErrorMessage="The Address field is required." />
                
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtState" CssClass="col-md-4 control-label">States</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtState" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtState"
                    CssClass="text-danger" ErrorMessage="The State field is required." />
                
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
            <asp:Label runat="server" AssociatedControlID="txtHotelDes" CssClass="col-md-4 control-label">Hotel Description</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtHotelDes" CssClass="form-control"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtHotelDes"
                    CssClass="text-danger" ErrorMessage="The Hotel Description field is required." />
                
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
            <asp:Label runat="server" AssociatedControlID="fileUpload1" CssClass="col-md-4 control-label">Photo</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload runat="server" ID="fileUpload1" CssClass="form-control upfile"></asp:FileUpload> 
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-4 control-label">City</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                    CssClass="text-danger" ErrorMessage="The City name is required." InitialValue="none" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" ID="bntSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="bntSubmit_Click" />
                <a href="List_Hotel.aspx" class="btn btn-warning ">See Hotel List</a>
            </div>

        </div>
    </div>
    
  </div>
</div>
    
 
   
                 
</asp:Content>
