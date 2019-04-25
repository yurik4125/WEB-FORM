<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Myapplication.UserRegistration" MasterPageFile="Promedical.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="masteHeadCPH" runat="server"> 



    <title>My application main page</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            width: 245px;
        }
    </style>
    <script>
        function validateNmberJava(oSrc, args) {
            args.IsValid = (args.Value % 5 == 0);
            
        }
    </script>
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="masteBodyCPH" runat="server">

       <h2>Registration</h2> <br/>
    
&nbsp;
       
        <table class="auto-style2">
            
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbUserLogin" runat="server" Text="Login:"></asp:Label>
                </td>
               
                <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldLogin0" runat="server" ControlToValidate="txtLogin" Display="Dynamic" ErrorMessage="Login is empty" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword0" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Password is empty" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </p>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldLogin" runat="server" ControlToValidate="txtLogin" Display="Dynamic" ErrorMessage="*" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbPassword" runat="server" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="*" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lbPasswordRepeat" runat="server" Text="Repeat Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPasswordRepeat" runat="server" CausesValidation="True" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword1" runat="server" ControlToValidate="txtPasswordRepeat" Display="Dynamic" ErrorMessage="*" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorRepeat" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordRepeat" Display="Dynamic" ErrorMessage="password doen't math!" ForeColor="#FF0066"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    I am not a robot!</td>
                <td>
                    <asp:TextBox ID="txtRobot" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validateNmberJava" ControlToValidate="txtRobot" ErrorMessage="Number must be divisible by 5"></asp:CustomValidator>
                </td>
            </tr>
        </table>
        <p>
            <asp:Button ID="btnEnter" runat="server" Text="Register" Width="381px" />
        </p>
       
</asp:Content>

