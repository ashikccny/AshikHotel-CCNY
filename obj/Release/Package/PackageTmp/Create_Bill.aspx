<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create_Bill.aspx.cs" Inherits="Ashik_Hotel_Reservation.Create_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="bill" >   
        <div class="card w-75" >
            <div class="card-body">
            <h5 class="card-title bg-info">Bill Information</h5>
            
               
                <table class="w-100">
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="lblHotelName" runat="server" Text=""></asp:Label>
                            <br />  
                            <asp:Label ID="lblHotelAddress" runat="server" Text=""></asp:Label>
                            Phone : 
                            <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="height: 30px">

                        </td>
                        <td style="height: 30px"></td>
                        <td style="height: 30px"></td>
                        <td style="height: 30px"></td>
                    </tr>
                    <tr>
                        <td>Booking ID : </td>
                        <td>
                            <asp:Label ID="lblBookingID" runat="server" Text=""></asp:Label>
                        </td>
                        <td>Client Name : </td>
                        <td>
                            <asp:Label ID="lblClientName" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Check In : </td>
                        <td>
                            <asp:Label ID="lblCheckIN" runat="server" Text=""></asp:Label>
                        </td>
                        <td>Check Out : </td>
                        <td>
                            <asp:Label ID="lblCheckOut" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Number of Rooms : </td>
                        <td>
                            <asp:Label ID="lblNumOfRooms" runat="server" Text=""></asp:Label>
                        </td>
                        <td>Room Type : </td>
                        <td>
                            <asp:Label ID="lblRoomType" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Total Price : </td>
                        <td>
                            <asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label>
                        </td>
                        <td>Total Days : </td>
                        <td>
                            <asp:Label ID="lblTotalDays" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />  
                <br />  
                
            </div>
        </div>
        <script>
            function printdiv(divname) {
                var presentcontent = document.getElementById(divname).innerHTML;
                var previouscontent = document.body.innerHTML;

                document.body.innerHTML = presentcontent;
                window.print();
                document.body.innerHTML = previouscontent;

            }
        </script>

    </div>

    <a href="Default.aspx" runat="server" class="btn btn-primary">Return To Home page</a>
                <button onclick ="printdiv('bill');" class="btn btn-info">
                    Print Bill
                </button>
</asp:Content>
