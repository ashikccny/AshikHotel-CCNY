<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn_Page.aspx.cs" Inherits="Ashik_Hotel_Reservation.LogIn__Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-8">

            <script>     
                function successalert() {
                    swal("Congratulations!", "Log In  successful", "success");
           
                }
                function erroralert() {
                    swal("Oops!", "Sorry not a valid user!!", "error");
                }

                function invalidalert() {
                    swal("Oops!", "Sorry not a valid user!!", "error");
                }

            </script>

            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Log In</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-info" ID="btnLogIn" />
                        </div>
                    </div>
                </div>
                
               
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
               
            </section>
        </div>
    </div>
</asp:Content>
