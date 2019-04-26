<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Myapplication.Appointment" MasterPageFile="Promedical.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="masteHeadCPH" runat="server"> 
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 77px;
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteBodyCPH" runat="server">
       
            <h2>Patient Appointment</h2>
            &nbsp;<asp:Label ID="lbPatientName" runat="server" Text="Patient name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="txtPatientName" runat="server" ForeColor="#009933" Text="No Patient Selected"></asp:Label>
            <br />
            <br />
            Appointment date<asp:Calendar ID="cldrApptDate" runat="server"></asp:Calendar>
            <br />
            Appointment start time<br />
            <asp:DropDownList ID="ddlStartTime" runat="server" Height="19px" Width="142px">
                <asp:ListItem>9 pm</asp:ListItem>
                <asp:ListItem>10 pm</asp:ListItem>
                <asp:ListItem>11 pm</asp:ListItem>
                <asp:ListItem>12 am</asp:ListItem>
                <asp:ListItem>1 am</asp:ListItem>
                <asp:ListItem>2 am</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Appointment end time<br />
            <asp:DropDownList ID="ddlEndTime" runat="server" Height="16px" Width="150px">
                <asp:ListItem>9 pm</asp:ListItem>
                <asp:ListItem>10 pm</asp:ListItem>
                <asp:ListItem>11 pm</asp:ListItem>
                <asp:ListItem>12 am</asp:ListItem>
                <asp:ListItem>1 am</asp:ListItem>
                <asp:ListItem>2 am</asp:ListItem>
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
                <asp:ListItem>Dr. Omar</asp:ListItem>
                <asp:ListItem>Dr. Yuriy</asp:ListItem>
                <asp:ListItem>Dr. Olga</asp:ListItem>
            </asp:DropDownList>
            <br />
</asp:Content>
