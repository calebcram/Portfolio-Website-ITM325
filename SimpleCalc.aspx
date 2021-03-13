<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimpleCalc.aspx.cs" Inherits="SimpleCalc.aspx.SimpleCalc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SimpleCalc</title>
    <style type="text/css">
        h1{
            text-align:center;
        }

        .auto-style1 {
            width: 50%;
            text-align:right;
        }
        .style2{
            width:40%;
        }

        .auto-style2 {
            width: 50%;
            text-align: right;
            height: 44px;
        }
        .auto-style3 {
            width: 40%;
            height: 44px;
        }
        .auto-style4 {
            height: 44px;
        }
        .ValStyle{
            width:400px;
            margin:10px,auto,10px,auto;

        }

          table
        {
         border-color: black;
         border-width: 1px;
         border-style: solid;
         border-radius: 20px;
         margin: 15px;
         background-color: lightgrey;
         width: 400px;
         height: 350px;
        }

    </style>
</head>
<body>
    <h1>SimpleCalc</h1>
    <form id="form1" runat="server">
        <div>


            <table style=" margin-right:auto; margin-left:auto;">
                <tr>
                    <td class="auto-style1">First Number:</td>
                    <td class="style2">
                        <asp:TextBox ID="FirstNum" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNum" Text="*" ErrorMessage="Must enter first number!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="FirstNum" Text="*" ErrorMessage="Enter a numeric value!" ForeColor="Red" Type="Double"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Second Number:</td>
                    <td class="style2">
                        <asp:TextBox ID="SecondNum" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SecondNum" Text="*" ErrorMessage="Must enter Second number!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="SecondNum" Text="*" ErrorMessage="Enter a numeric value!" ForeColor="Red" Type="Double"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Operators:</td>
                    <td class="auto-style3">
                        <asp:RadioButton ID="AddButton" runat="server" GroupName="MATH" Text="Addition ( + )" ValidateRequestMode="Enabled" ValidationGroup="RadioButton" />
                        <br />
                        <asp:RadioButton ID="SubButton" runat="server" GroupName="MATH" Text="Subtraction ( - )" ValidationGroup="RadioButton" />
                        <br />
                        <asp:RadioButton ID="MulButton" runat="server" GroupName="MATH" Text="Multiplacation ( * )" ValidationGroup="RadionButton" />
                        <br />
                        <asp:RadioButton ID="DivButton" runat="server" GroupName="MATH" Text="Division ( / )" ValidationGroup="RadioButton" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Output:</td>
                    <td>
                        <asp:TextBox ID="OutPutBox" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="padding: 6px; text-align:center;">
                        <asp:Button ID="CalcButton" runat="server" Font-Size="Large" Text="Calculate" OnClick="OutPut" />
                        <asp:Button ID="ClearButton" runat="server" Font-Size="Large" Text="Clear" OnClick="ClearForm" />
                    </td>
                </tr>
            </table>


            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ValStyle" ForeColor="Red"  Font-Size="Large" style=" margin-right:auto; margin-left:auto;" />
            <br />


        </div>
    </form>
</body>
</html>
