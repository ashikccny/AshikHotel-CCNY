<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Edit_Hotel.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Edit_Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">   
        <div class="col-sm-6">   
            <div class="card">   
                <div class="card-header bg-primary text-white">  
                    <p class="p-2"> 
                        Edit Hotel Information
                    </p>                   
                </div>
                <div class="card-body">  

                    <p class="text-success">
                    <asp:Literal runat="server" ID="Msg" />
                    </p>
                    <asp:ValidationSummary runat="server" CssClass="text-danger" />

                    <div class="form-group">
                        <label for="txtName">Hotel Name</label>
                        <asp:TextBox ID="txtName" CssClass="form-control" placeholder="Hotel Name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                        CssClass="text-danger" ErrorMessage="The Name field is required." />
                    </div>

                    <div class="form-group">
                        <label for="txtAddress">Hotel Address</label>
                        <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Hotel Address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress"
                        CssClass="text-danger" ErrorMessage="The Address field is required." />
                    </div>
    
                    <div class="form-group">
                        <label for="txtState">State</label>
                        <asp:TextBox ID="txtState" CssClass="form-control" placeholder="State" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtState"
                        CssClass="text-danger" ErrorMessage="The State field is required." />
                    </div>

                    <div class="form-group">
                        <label for="txtPhone">Phone</label>
                        <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                        CssClass="text-danger" ErrorMessage="The Phone Numebr is required." />
                    </div>

                    <div class="form-group">
                        <label for="txtDescription">Hotel Description</label>
                        <asp:TextBox ID="txtDescription" CssClass="form-control" placeholder="Hotel Description" runat="server"></asp:TextBox>
                        
                    </div>

                    <div class="form-group">
                        <label for="txtEmail">Email</label>
                        <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtemail"
                        CssClass="text-danger" ErrorMessage="The Email field is required." />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" CssClass="text-danger" ErrorMessage="invalid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
                    </div>

                    <div class="form-group">
                        <label for="drpCity">City</label>
                        <asp:DropDownList ID="drpCity" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="drpCity"
                    CssClass="text-danger" ErrorMessage="The City name is required." InitialValue="none" />
                    </div>

                    <div class="form-group">
                        <label for="FileUpload1">Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;<asp:TextBox ID="txtImage" runat="server" Visible="False"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <a href="List_Hotel.aspx" class="btn btn-info">See Hotel List</a>
                </div>
             </div>
        </div>
        <div class="col-sm-6">   
            <div class="card">   
                <div class="card-header bg-primary text-white">  
                    
                </div>
                <div class="card-body">   
                    
                    <asp:Image ID="Image1" runat="server" Height="275px" Width="277px" />
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
