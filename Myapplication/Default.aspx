<%@ Page Title="" Language="C#" MasterPageFile="~/Promedical.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Myapplication.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="masteHeadCPH" runat="server"> 
    <title>My application main page</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style5 {
            width: 111px;
        }
        .auto-style6 {
            width: 111px;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
        .auto-style8 {
            width: 415px;
        }
        .auto-style9 {
            height: 31px;
            width: 415px;
        }
        .auto-style10 {
            width: 32px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="masteBodyCPH" runat="server">
    <h2>Welcome to the main page</h2>
        <p></p>
        
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCustomerID" runat="server" Text="Customer ID"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtID" runat="server" Width="188px" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqValidatorID" runat="server" ErrorMessage="ID is empty" ControlToValidate="txtID" Display="Dynamic" ForeColor="#FF0066"><img alt="o" class="auto-style10" src="Images/war.jpg" /></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="LlblLastName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtLname" runat="server" Width="143px" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqValidatorLast" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLname" Display="Dynamic" ErrorMessage="format is incorrect" ForeColor="#FF0066" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtFname" runat="server" Width="148px" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ReqValidatorFirst" runat="server" ControlToValidate="txtFname" ErrorMessage="First Required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtFname" Display="Dynamic" ErrorMessage="format is incorrect" ForeColor="#FF0066" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblBirthDate" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblAge" runat="server"></asp:Label>
                </td>
                <td class="auto-style4" rowspan="7">
                    <asp:Calendar ID="CldrDOB" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="CldrDOB_SelectionChanged" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtAddress" runat="server" Width="230px"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblPostalcode" runat="server" Text="Postal Code"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtPostalcode" runat="server" Width="84px" CausesValidation="True"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPostalcode" Display="Dynamic" ErrorMessage="Format is incorrect" ValidationExpression="[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$"></asp:RegularExpressionValidator>
                </td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblEmail" runat="server" Text="Email address"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtEmail" runat="server" Width="228px" CausesValidation="True"></asp:TextBox>
                   
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Wrong format email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   
                            </td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                            </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" ClientIDMode="Static" Height="18px" Width="108px">
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:DropDownList>
                            </td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="LlblMedHist" runat="server" Text="Medical history"></asp:Label>
                            </td>
                <td class="auto-style9">
                    <asp:CheckBox ID="chkAllergies" runat="server" Text="Allergies" />
&nbsp;
                    <asp:CheckBox ID="chkDiabeties" runat="server" Text="Diabeties" />
&nbsp;
                    <asp:CheckBox ID="chkHBP" runat="server" Text="High Blood Pressure" />
&nbsp;
                    <asp:TextBox ID="txtOthers" runat="server" Width="160px">Others</asp:TextBox>
                            </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblNew" runat="server" Text="New Patient"></asp:Label>
                            </td>
                <td class="auto-style9">
                    <asp:RadioButton ID="rbtnNew" runat="server" GroupName="NewPatient" Text="New" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtnExisting" runat="server" GroupName="NewPatient" Text="Existing" />
                            </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="LbWeight" runat="server" Text="Weight"></asp:Label>
                            </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtWeight" runat="server" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rngWeight" runat="server" ControlToValidate="txtWeight" Display="Dynamic" ErrorMessage="Weight is empty " ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Weight must be between 40-140" MaximumValue="140" MinimumValue="40" ControlToValidate="txtWeight" Type="Integer">*</asp:RangeValidator>
                            </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
                        <tr>
                <td class="auto-style5">
                    <asp:Label ID="LbHeigh" runat="server" Text="Height"></asp:Label>
                            </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtHeight" runat="server" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rngHeight" runat="server" ControlToValidate="txtHeight" Display="Dynamic" ErrorMessage="Height  is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Height must be between 60-240" MaximumValue="140" MinimumValue="60" ControlToValidate="txtHeight" Display="Dynamic" ForeColor="Red" Type="Integer">*</asp:RangeValidator>
                            </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
        <p class="auto-style7">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        <br />
        </p>
        <p>&nbsp;</p>
        <br />
        <br />
</asp:Content>







  


