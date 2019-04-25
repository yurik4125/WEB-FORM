<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cosultation.aspx.cs" Inherits="Myapplication.Cosultation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    </style>
    <img src="Images/Logo.png" alt="logo" />
    
&nbsp;</head><body>
<form id="form1" runat="server">
       
                
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
            
                <h2>Consultation</h2><br />
            
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">Temperature</td>
                        <td>
                            <asp:TextBox ID="txtTemp" runat="server" CausesValidation="True"></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtTemp" ErrorMessage="Temperature can’t be below 30 or beyond 44" MaximumValue="44" MinimumValue="30"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Heart rate</td>
                        <td>
                            <asp:TextBox ID="txtHeartRate" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Respiration rate</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Blood pressure</span></td>
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
                        <td class="auto-style5"><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Pain score</span></td>
                        <td>
                            <asp:TextBox ID="txtPainScore" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Pain location</span></td>
                        <td>
                            <asp:TextBox ID="txtLocation" runat="server" MaxLength="40"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><span style="font-size:11.0pt;line-height:107%;
font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">Anatomic observations </span></td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtAnatomic" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
            
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="485px" />
            
    </form>
</body>
</html>
