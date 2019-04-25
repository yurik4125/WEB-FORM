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
</asp:Content>
