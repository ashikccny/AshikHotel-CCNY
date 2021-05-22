<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ashik_Hotel_Reservation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">Ashik Hotel Reservation</h1>
        <% if (!Ashik_Hotel_Reservation.UserInfo.IsAuthenticated)
            { %>
        <h4 class="text-center text-warning">Guest View</h4>
         <% } %>
        

    </div>

    <div>   
        <span> Search : </span> <asp:TextBox ID="txtSearch" runat="server" Width="1200px" placeholder="City or Hotel Name or Room Catagory"></asp:TextBox> <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <a class="btn btn-warning ml-3"   href="https://www.airbnb.com/s/Atlantic-Ave--Brooklyn--New-York--NY/homes?place_id=EilBdGxhbnRpYyBBdmUsIEJyb29rbHluLCBOZXcgWW9yaywgTlksIFVTQSIuKiwKFAoSCWMT6Dg_XMKJEeMkuc2pmyKpEhQKEgkJIXyUFkTCiRGGeAAEdFx2gg&adults=2&children=0&landing_page_section=MARQUEE">Show AIRBNB Price: Brooklyn</a>
        <a class="btn btn-warning ml-3"   href="https://www.airbnb.com/s/Elmhurst--Queens--NY/homes?place_id=ChIJFeLPoFNewokRcLv9oGu0tfI&adults=2&children=0&landing_page_section=MARQUEE">Show AIRBNB Price: Queens</a>
    </div>

    
    <hr />  
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="3">
        <Columns>
            <asp:BoundField DataField="City_Name" HeaderText="City" />
            <asp:BoundField DataField="Hotel_Name" HeaderText="Hotel Name" />
            <asp:BoundField DataField="RoomType_Name" HeaderText="Room Catagory" />
            <asp:BoundField DataField="Room_Price" DataFormatString="{0:.00}" HeaderText="Room Price" />
            <asp:TemplateField HeaderText="Photo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image_URL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Image_URL") %>'></asp:Label>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="80px" ImageUrl='<%# Bind("Image_URL", "~/Hotel_Image/{0}") %>' Width="80px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <hr />  
   </asp:Content>
