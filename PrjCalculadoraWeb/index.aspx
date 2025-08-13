<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="index.aspx.cs" 
    Inherits="PrjCalculadoraWeb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 60%; border: solid;">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                   
                    <td clspan="2" style="text-align:center;">
                        <h1>Calculadora da Moléstia</h1>
                    </td>
                     <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                     <td colspan="4">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                        <asp:Label ID="lbParcelaA" runat="server" Text="Label" />
                    <td>
                        &nbsp;
                    </td>
                </tr>

                <tr>
                     <td colspan="4">
                        <hr />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
