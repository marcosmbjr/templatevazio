<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PrjCalculadoraWeb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculadora</title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:60%; border:solid;">


                <!-- Linha 1-->
                
                <tr>
                    <td>
                        &nbsp; 
                    </td>
                    <td colspan="2" style = "text-align:center;">
                        <h1>Calculadora da Moléstia</h1>
                        <hr/>
                    </td>
                    <td>
                        &nbsp; 
                        </td>
                </tr>

                <!-- Linha 2A-->


                <tr>
                    <td>
                        &nbsp; 
                    </td>
                    <td>
                        <asp:Label ID="lbParcelaA" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Arial" />
                    </td>
                    <td style = "text-align:center;">
                        <asp:TextBox ID="txtParcelaA" runat="server" ForeColor="Red" width="200px" />
                    </td>
                    <td>
                        &nbsp; 
                    </td>
                </tr>


                
                <!-- Linha 2B-->


                <tr>
                    <td>
                        &nbsp; 
                    </td>
                    <td>
                        <asp:Label ID="lbParcelaB" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Arial" />
                    </td>
                    <td  style = "text-align:center;">
                        <asp:TextBox ID="txtParcelaB" runat="server" ForeColor="Red" width="200px" />
                    </td>
                    <td>
                        &nbsp; 
                    </td>
                </tr>

                <!-- Linha 3-->


                <!-- Linha 4-->

                 <tr>
                    <td colspan ="4">
                        <hr/>
                    </td>
                </tr>


                <!-- Linha 5 Button-->

                  <tr>
                    <td colspan ="4" style="text-align:center;">
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style1">
                                    &nbsp; 
                                </td>

                                <td class="auto-style1">
                                    <asp:Button ID="btMais" runat="server" Text="+" ForeColor="Red" width ="50px" OnClick="btOk_Click"/>
                                </td>

                                
                                <td class="auto-style1">
                                    <asp:Button ID="btMenos" runat="server" Text="-" ForeColor="Red" width ="50px" OnClick="btOk_Click"/>
                                </td>

                                <td class="auto-style1">
                                    <asp:Button ID="btVezes" runat="server" Text="*" ForeColor="Red" width ="50px" OnClick="btOk_Click"/>
                                </td>

                                <td class="auto-style1">
                                    <asp:Button ID="btDivisao" runat="server" Text="/" ForeColor="Red" width ="50px" OnClick="btOk_Click"/>
                                </td>

                                <td class="auto-style1">
                                    <asp:Button ID="btRaiz" runat="server" Text="SQT" ForeColor="Red" width ="50px" OnClick="btOk_Click"/>
                                </td>

                                 <td class="auto-style1">
                                    <asp:Button ID="btClear" runat="server" Text="C" ForeColor="Red" width ="50px" OnClick="btClear_Click" />
                                </td>

                                <td class="auto-style1">
                                    &nbsp; 
                                </td>

                            </tr>
                        </table>
                    </td>
                </tr>

                 <tr>
                    <td colspan ="4">
                        <hr/>
                    </td>
                </tr>

                 <tr>
                    <td colspan ="4" style="text-align:center;">
                        <asp:Label ID="lbResultado" runat="server" ForeColor="Red" Font-Bold="True" Font-Names="Arial" Text="Resultado:"/>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>