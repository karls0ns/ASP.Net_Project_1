<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Del.aspx.cs" Inherits="LD2.Del" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dzēst</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body>
    <form id="formDel" runat="server">
        <h1> 
            <asp:ImageButton ID="btnHome" ImageUrl="~/Image/btnHome.png" runat="server" Width="45px" OnClick="btnHome_Click"/>
        Dzēst rezultātus
        </h1>
        <div id="mainDel">            
            <div id="mainDelList">
                <asp:ScriptManager ID="ScriptManagerDel1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanelDel1" runat="server" ChildrenAsTriggers="false" UpdateMode="conditional">   
                <ContentTemplate>
                    <asp:ListBox ID="ListDel" runat="server" Height="277px" Width="160px" OnSelectedIndexChanged="ListDel_SelectedIndexChanged" 
                        AutoPostBack="true"></asp:ListBox>
                </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            

            <div id="mainDelBody">
                <asp:UpdatePanel ID="UpdatePanelDel2" runat="server">
                <ContentTemplate>
                <div>
                    <asp:Label CssClass="Label" ID="LabelDelVards" runat="server" Text="Vārds:"></asp:Label>
                    <asp:TextBox CssClass="textBox" ID="TextDelVards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>                                
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelDelUzvards" runat="server" Text="Uzvārds:"></asp:Label>
                    <asp:TextBox CssClass="textBox" ID="TextDelUzvards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>
                </div>
                <div>            
                    <asp:Label CssClass="Label" ID="LabelDelAtzime_1" runat="server" Text="Atzīme 1:"></asp:Label>
                    <asp:TextBox  CssClass="txtAtzime" ID="TextDelAtzime_1" runat="server"></asp:TextBox>           
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelDelAtzime_2" runat="server" Text="Atzīme 2:"></asp:Label>
                    <asp:TextBox  CssClass="txtAtzime" ID="TextDelAtzime_2" runat="server"></asp:TextBox>            
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelDelAtzime_3" runat="server" Text="Atzīme 3:"></asp:Label>
                    <asp:TextBox  CssClass="txtAtzime" ID="TextDelAtzime_3" runat="server"></asp:TextBox>
                </div>
                </ContentTemplate>
                </asp:UpdatePanel>                
                <div>
                    <asp:Button CssClass="singleButtonMid" ID="BtnDelSubmit" runat="server" Text="Dzēst" OnClick="BtnDelSubmit_Click"
                       OnClientClick="javascript:return confirm('Vai tiešām vēlies izdzēst šo ierakstu?');"/>
                </div>
            </div>            
        </div>

    </form>
</body>
</html>
