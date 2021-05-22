<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking_Page.aspx.cs" Inherits="Ashik_Hotel_Reservation.Booking_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script>     
        function successalert() {
            swal("Congratulations!", "Booking Completed successfully", "success");
            
        }
        function erroralert() {
            swal("Oops!", "something went wrong", "error");
        }
    </script>

     <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Content/assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="Content/assets/css/demo.css">

    <div class="container">
  <div class="row">
    <div class="col-sm">
    <div>   
        <div class="card">
        <div class="card-body">
                <div class="form-horizontal">
                    <button type="button" class="btn btn-primary">
                      Points <span class="badge bg-secondary"> <asp:Label ID="lblPoint" runat="server" Text="0"></asp:Label></span>
                    </button>
                    
        <h4 class="text-white bg-success p-2" style="border-radius:5%;">New Booking</h4>
        <h6 class="text-white bg-info p-2" style="border-radius:5%;">Buy 5 Booking Process & Get 1 Free!!</h6>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCheckIN" CssClass="col-md-6 control-label">Check in Date</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtCheckIN" CssClass="form-control mypicker" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCheckIN"
                    CssClass="text-danger" ErrorMessage="The Check in date is required." />
            </div>
        </div>

       <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCheckOUT" CssClass="col-md-6 control-label">Check out Date</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtCheckOUT" CssClass="form-control mypicker" />
                <asp:CompareValidator ID="CmpDate" runat="server" ErrorMessage="Check Out date must be biger then Check In date" CssClass="text-danger" Operator="GreaterThan" Type="Date" ControlToValidate="txtCheckOUT" ControlToCompare="txtCheckIN"></asp:CompareValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCheckOUT"
                    CssClass="text-danger" ErrorMessage="The Check out date is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRoomNo" CssClass="col-md-6 control-label">Total Number of Rooms</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtRoomNo" CssClass="form-control" Text="1" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRoomNo"
                    CssClass="text-danger" ErrorMessage="The Room Number is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtAdults" CssClass="col-md-6 control-label">Adult</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtAdults" CssClass="form-control" Text="1" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAdults"
                    CssClass="text-danger" ErrorMessage="The Adult field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtChildren" CssClass="col-md-6 control-label">Children</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtChildren" CssClass="form-control" Text="0" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtChildren"
                    CssClass="text-danger" ErrorMessage="The children field is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="drpRoomType" CssClass="col-md-6 control-label">Room</asp:Label>
            <div class="col-md-6">
               
                <asp:DropDownList ID="drpRoomType" CssClass="form-control" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="drpRoomType_SelectedIndexChanged">
                    <asp:ListItem Value="0">-- Select --</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="drpRoomType"
                    CssClass="text-danger" ErrorMessage="The Room field is required." ID="ReqRoomType" InitialValue="0" />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPrice" CssClass="col-md-6 control-label">Price</asp:Label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPrice"
                    CssClass="text-danger" ErrorMessage="The Price field is required." />
            </div>
        </div>

        <asp:TextBox runat="server" ID="txtHotelID" CssClass="form-control" Visible="False" />
        <asp:TextBox runat="server" ID="txtUserID" CssClass="form-control" Visible="False" />
                    <hr />  
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server"  Text="Booking" CssClass="btn btn-primary" ID="btnBooking" OnClick="btnBooking_Click" />
                <a runat="server" class="btn btn-warning" href="~/Default.aspx">Back</a>
            </div>
        </div>
    </div>
        </div>
        </div>
    </div>
     
    </div>
    <div class="col-sm">
      <div>
            <div class="heading">
                <h1 class="inline-block">Payment</h1> Please Pay $<asp:Label ID="lblAmount" Style="background-color:crimson; color:white" runat="server" Text=""></asp:Label>
                <hr />  
            </div>
            <div class="payment">
                
                    <div class="form-group owner">
                        <label for="owner">Owner Name</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Card Number</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Expiration Date</label>
                        <select>
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                            <option value="22"> 2022</option>
                            <option value="23"> 2023</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="Content/assets/images/visa.jpg" id="visa">
                        <img src="Content/assets/images/mastercard.jpg" id="mastercard">
                        <img src="Content/assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                     <button type="submit"  class ="btn btn-primary" id="confirm_purchase">Confirm</button>
                    </div>
               
            </div>
        </div>
    </div>
    
  </div>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="Content/assets/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="Content/assets/js/script.js"></script>

</asp:Content>
