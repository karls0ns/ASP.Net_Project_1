<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="LD2.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pievienot</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body onkeydown = "return (event.keyCode!=13)">
    <form id="formAdd" runat="server">
        <h1> 
            <asp:ImageButton ID="btnHome" ImageUrl="~/Image/btnHome.png" runat="server" Width="45px" OnClick="btnHome_Click"/>
        Pievienot rezultātus
        </h1>
        
        <div id="mainAdd">
            <div>
                <asp:Label CssClass="Label" ID="LabelAddVards" runat="server" Text="Vārds:"></asp:Label>
                <asp:TextBox CssClass="textBox" ID="TextAddVards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVVards" runat="server"
                    ErrorMessage="Nav ievadīts vārds     " ControlToValidate="TextAddVards"
                    Font-Size="20px" Font-Bold="true" ForeColor="Red" Height="10px" Width="180px"></asp:RequiredFieldValidator>                
            </div>
            <div>
                <asp:Label CssClass="Label" ID="LabelAddUzvards" runat="server" Text="Uzvārds:"></asp:Label>
                <asp:TextBox CssClass="textBox" ID="TextAddUzvards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVUzvards" runat="server"
                    ErrorMessage="Nav ievadīts uzvārds" ControlToValidate="TextAddUzvards"
                    Font-Size="20px" Font-Bold="true" ForeColor="Red" Height="10px" Width="180px"></asp:RequiredFieldValidator>
            </div>
            <div>            
                <asp:Label CssClass="Label" ID="LabelAddAtzime_1" runat="server" Text="Atzīme 1:"></asp:Label>
                <asp:DropDownList  CssClass="dropDownList" ID="DropAddAtzime_1" runat="server">
                        <asp:ListItem Enabled="true" Text="Atzīme" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVAtzime_1" runat="server"
                    ErrorMessage="Nav ievadīta atzīme" InitialValue="-1" ControlToValidate="DropAddAtzime_1"
                    Font-Size="20px" Font-Bold="true" ForeColor="Red" Height="10px" Width="180px"></asp:RequiredFieldValidator>
            </div>
            <div>
            <asp:Label CssClass="Label" ID="LabelAddAtzime_2" runat="server" Text="Atzīme 2:"></asp:Label>
            <asp:DropDownList CssClass="dropDownList" ID="DropAddAtzime_2" runat="server">
                        <asp:ListItem Enabled="true" Text="Atzīme" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFVAtzime_2" runat="server"
                    ErrorMessage="Nav ievadīta atzīme" InitialValue="-1" ControlToValidate="DropAddAtzime_2"
                    Font-Size="20px" Font-Bold="true" ForeColor="Red" Height="10px" Width="180px"></asp:RequiredFieldValidator>
            </div>
            <div>
            <asp:Label CssClass="Label" ID="LabelAddAtzime_3" runat="server" Text="Atzīme 3:"></asp:Label>
            <asp:DropDownList CssClass="dropDownList" ID="DropAddAtzime_3" runat="server">
                        <asp:ListItem Enabled="true" Text="Atzīme" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RFVAtzime_3" runat="server"
                    ErrorMessage="Nav ievadīta atzīme" InitialValue="-1" ControlToValidate="DropAddAtzime_3"
                    Font-Size="20px" Font-Bold="true" ForeColor="Red" Height="10px" Width="180px"></asp:RequiredFieldValidator>
            </div>
            <div>

                <asp:Button CssClass="singleButton" ID="BtnAddSubmit" runat="server" Text="Pievienot" OnClick="BtnAddSubmit_Click" />
                <input style="height:50px; width:150px;font-size: 30px; margin-left:100px; margin-right:150px; margin-top:10px;" 
                        id="BtnAddClear" type="reset" value="Notīrīt" />

            </div>
        </div>
    </form>
</body>
</html>
