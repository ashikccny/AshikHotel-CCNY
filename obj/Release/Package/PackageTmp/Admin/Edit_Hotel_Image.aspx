<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Edit_Hotel_Image.aspx.cs" Inherits="Ashik_Hotel_Reservation.Admin.Edit_Hotel_Image" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">   
        <div class="col-sm-6">   
            <div class="card">   
                <div class="card-header bg-primary text-white">  
                    <p class="p-2"> 
                        Edit Hotel Room Image 
                    </p>                   
                </div>
                <div class="card-body">  

                    <p class="text-success">
                    <asp:Literal runat="server" ID="Msg" />
                    </p>
                    <asp:ValidationSummary runat="server" CssClass="text-danger" />

                    

                    <div class="form-group">
                        <label for="drpHotel">Hotel</label>
                        <asp:DropDownList ID="drpHotel" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="none">-- Select --</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="drpHotel"
                    CssClass="text-danger" ErrorMessage="The Hotel name is required." InitialValue="none" />
                    </div>

                    <div class="form-group">
                        <label for="FileUpload1">Hotel Image</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    &nbsp;<asp:TextBox ID="txtImage" runat="server" Visible="False"></asp:TextBox>
                    </div>


                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat ="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <a href="List_Hotel_Image.aspx" class="btn btn-info">See Hotel Room Image List</a>
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
