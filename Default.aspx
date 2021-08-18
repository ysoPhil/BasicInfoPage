<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodingTest2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="MainStyle.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="lblInfo" runat="server" Text="Your Basic Information" CssClass="lblLarge" Font-Bold="False"></asp:Label>
                <asp:Label ID="lblName" runat="server" Text="Full Name: " CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" CssClass="input"  ForeColor="#999999" onfocus="txtOnFocus(this)" onblur="txtOnBlur(this)">Firstname Lastname</asp:TextBox>
                <asp:RequiredFieldValidator ID="RFValName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtName" CssClass="valError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExName" runat="server" ControlToValidate="txtName" CssClass="valError" Display="Dynamic" ErrorMessage="Name should be entered as &quot;Firstname Lastname&quot;" ValidationExpression="\w{1,}\s\w{1,}"></asp:RegularExpressionValidator>
                <asp:Label ID="lblCompany" runat="server" Text="Company Name: " CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtCompany" runat="server" CssClass="input"></asp:TextBox>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Time Zone: " CssClass="lblSmall"></asp:Label>
                <asp:DropDownList ID="ddlTimeZone" runat="server" CssClass="input">
                    <asp:ListItem>Please choose one</asp:ListItem>
                    <asp:ListItem>Pacific Time</asp:ListItem>
                    <asp:ListItem>Mountain Time</asp:ListItem>
                    <asp:ListItem>Central Time</asp:ListItem>
                    <asp:ListItem>Eastern Time</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:Label ID="lblInfo0" runat="server" Text="Choose Membership" CssClass="lblLarge" Font-Bold="False"></asp:Label>
                <asp:RadioButton ID="radBtnFree" runat="server" Text="Free" GroupName="Membership" CssClass="radioBtn" onclick="radFreeOnClick(this)"/>
                <asp:RadioButton ID="radBtnBasic" runat="server" Text="Basic" GroupName="Membership" CssClass="radioBtn" onclick="radBasicOnClick(this)"/>
                <asp:RadioButton ID="radBtnPremium" runat="server" Text="Premium" GroupName="Membership" CssClass="radioBtn" onclick="radPremiumOnClick(this)"/>
            </div>
            <div style="margin-top: 13px">
                <asp:Label ID="lblFee" runat="server" Text="Total Fee:" Style="display: inline-block" CssClass="lblSmall"></asp:Label>
                <asp:Label ID="lblAmount" runat="server" Text="$0" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblInfo1" runat="server" Text="Account Details" CssClass="lblLarge" Font-Bold="False"></asp:Label>
                <asp:Label ID="lblAge" runat="server" Text="Date of Birth:" CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input" oninput="txtAgeOnChange(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Age is required" ControlToValidate="txtAge" CssClass="valError" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revAge" runat="server" ControlToValidate="txtAge" CssClass="valError" Display="Dynamic" ErrorMessage=" Age must be in mm/dd/yyyy format." ValidationExpression="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d"></asp:RegularExpressionValidator>
                <asp:Label ID="lblEmail" runat="server" Text="Email address: " CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegExEmail" runat="server" ControlToValidate="txtEmail" CssClass="valError" Display="Dynamic" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="CustomValEmail" runat="server" ControlToValidate="txtEmail" CssClass="valError" ErrorMessage="The email must contain company name" OnServerValidate="CustomValEmail_ServerValidate"></asp:CustomValidator>
                <asp:Label ID="lblPassword" runat="server" Text="Password: " CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFValPassword" runat="server" ControlToValidate="txtPassword" CssClass="valError" Display="Dynamic" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegExPassword" runat="server" ControlToValidate="txtPassword" CssClass="valError" ErrorMessage="Password should be atleast 8 characters long" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                <asp:Label ID="lblReenterPwd" runat="server" Text="Re-enter Password: " CssClass="lblSmall"></asp:Label>
                <asp:TextBox ID="txtReenterPassword" runat="server" TextMode="Password" CssClass="input"></asp:TextBox>
                <asp:CompareValidator ID="CmpValReenterPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtReenterPassword" CssClass="valError" ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </div>
            <div style="margin-top: 20px">
                <asp:Button ID="btnSignup" runat="server" Text="Sign up" OnClick="btnSignup_Click" CssClass="btn" />
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
