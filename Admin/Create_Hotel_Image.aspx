<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Create_Hotel_Image.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Create_Hotel_Image" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card w-50">
         
  <div class="card-header bg-primary text-white">
   
      <p class="p-1">  Create Hotel Room Image </p>
                             
  </div>

  <div class="card-body">
      <p class="text-success">
        <asp:Literal runat="server" ID="Msg" />
        </p>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

     <div class="form-horizontal">
        
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-4 control-label">Hotel</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                    CssClass="text-danger" ErrorMessage="The Hotel name is required." InitialValue="none" />
            </div>
        </div>
        

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="fileUpload1" CssClass="col-md-4 control-label">Photo</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload runat="server" ID="fileUpload1" CssClass="form-control upfile"></asp:FileUpload> 
            </div>
        </div>

         

        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" ID="bntSubmit" Text="Submit" CssClass="btn btn-primary" OnClick="bntSubmit_Click" />
                <a href="List_Hotel_Image.aspx" class="btn btn-warning ">See Hotel Image List</a>
            </div>

        </div>
    </div>
    
  </div>
</div>
   
</asp:Content>
