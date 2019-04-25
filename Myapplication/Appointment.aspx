<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Myapplication.Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77px;
            height: 62px;
        }
    </style>
    &nbsp;</head><body><form id="form1" runat="server">
       
        <div>
            <img alt="Logo" class="auto-style1" src="Images/Logo.png" /><br />
            <br />
            <p></p>
      
            <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px" Orientation="Horizontal">
                <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#B5C7DE" />
                <DynamicSelectedStyle BackColor="#507CD1" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Appointment.aspx" Text="Appointment" Value="Appointment"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/UserRegistration.aspx" Text="Login" Value="Login"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#507CD1" />
            </asp:Menu>
             <p></p>
       
            <h2>Patient Appointment</h2>
            Appointment date<asp:Calendar ID="cldrApptDate" runat="server"></asp:Calendar>
            <br />
            Appointment start time<br />
            <asp:DropDownList ID="ddlStartTime" runat="server" Height="16px" Width="150px">
            </asp:DropDownList>
            <br />
            <br />
            Appointment end time<br />
            <asp:DropDownList ID="ddlEndTime" runat="server" Height="16px" Width="145px">
            </asp:DropDownList>
            <br />
            <br />
            Confirmed appointment&nbsp;
            <asp:TextBox ID="txtApptDateTime" runat="server" Width="285px"></asp:TextBox>
&nbsp;<asp:CheckBox ID="chkConfirmed" runat="server" />
            <br />
            <br />
            Reason of Appointment
            <br />
            <asp:TextBox ID="txtReason" runat="server" Height="56px" TextMode="MultiLine" Width="579px"></asp:TextBox>
            <br />
            <br />
            Physician<br />
            <asp:DropDownList ID="ddlPhysician" runat="server" Width="167px">
            </asp:DropDownList>
            <br />
        </div>
    </form>
</body>
</html>
