<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cosultation.aspx.cs" Inherits="Myapplication.Cosultation" MasterPageFile="Promedical.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="masteHeadCPH" runat="server"> 
    <title>My application main page</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
    <script>
        function validateNmberJava(oSrc, args) {
            args.IsValid = (args.Value % 5 == 0);
            
        }
    </script>
    <style type="text/css">
        .auto-style5 {
            width: 224px;
        }
        .auto-style6 {
            width: 224px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
    .auto-style8 {
        width: 224px;
        height: 26px;
    }
    .auto-style9 {
        height: 26px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="masteBodyCPH" runat="server">
            
                <h2>Consultation</h2><br />
            
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="LBTemperature" runat="server" Text="Temperature"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTemp" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtTemp" ErrorMessage="Temperature can’t be below 30 or beyond 44" MaximumValue="44" MinimumValue="30"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="lbHeartRate" runat="server" Text="Heart rate"></asp:Label>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtHeartRate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lbRespirationRate" runat="server" Text="Respiration rate"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRespirationRate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lbBloodPressure" runat="server" Text="Blood pressure"></asp:Label>
                        </td>
                        <td>S<strong><span style="font-size:11.0pt;line-height:
107%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">ystolic&nbsp;
                            <asp:TextBox ID="txtSYS" runat="server" CausesValidation="True" MaxLength="3" Width="89px"></asp:TextBox>
&nbsp;&nbsp; Diastolic
                            <asp:TextBox ID="txtDIA" runat="server" CausesValidation="True" MaxLength="3" Width="85px"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSYS" ControlToValidate="txtDIA" ErrorMessage="The systolic is always greater than the diastolic" Operator="LessThan" Type="Integer"></asp:CompareValidator>
                            <br />
                            </span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lbPainScore" runat="server" Text="Pain score"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPainScore" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lbPainLocation" runat="server" Text="Pain location"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLocation" runat="server" MaxLength="40"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" Text="Anatomic observations "></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtAnatomic" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
            
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="485px" />
            
</asp:Content>
