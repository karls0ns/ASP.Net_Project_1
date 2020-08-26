<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LD2.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LD2</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body>
    <form id="formMain" runat="server">
        <div>
            <h1>Eksāmena atzīmju reģistrācijas sistēma</h1>
        </div>        
        <div id="mainButtons">
        <asp:Button CssClass="button" ID="BtnAdd_main" runat="server" Text="Pievienot" OnClick="BtnAdd_main_Click" />
        <asp:Button CssClass="button" ID="BtnMod_main" runat="server" Text="Labot" OnClick="BtnMod_main_Click"  />
        <asp:Button CssClass="button" ID="BtnDel_main" runat="server" Text="Dzēst" OnClick="BtnDel_main_Click" />
        <asp:Button CssClass="button" ID="BtnData_main" runat="server" Text="Apskatīt datus" OnClick="BtnData_main_Click" />
        <asp:Button CssClass="button" ID="BtnBest_main" runat="server" Text="Teicamnieki" OnClick="BtnBest_main_Click" />
        </div>    
        
    </form>
    
</body>
</html>
