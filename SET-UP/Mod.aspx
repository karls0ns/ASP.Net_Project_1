<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mod.aspx.cs" Inherits="LD2.Mod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modificēt</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body>
    <form id="formMod" runat="server">
        <h1> 
            <asp:ImageButton ID="btnHome" ImageUrl="~/Image/btnHome.png" runat="server" Width="45px" OnClick="btnHome_Click"/>
        Labot rezultātus
        </h1>
        <div id="mainMod">            
            <div id="mainModList">
                <asp:ScriptManager ID="ScriptManagerMod1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanelMod1" runat="server" ChildrenAsTriggers="false" UpdateMode="conditional">   
                <ContentTemplate>
                    <asp:ListBox ID="ListMod" runat="server" Height="277px" Width="160px" OnSelectedIndexChanged="ListMod_SelectedIndexChanged" 
                        AutoPostBack="true"></asp:ListBox>
                </ContentTemplate>
                </asp:UpdatePanel>
            </div>         
            <div id="mainModBody">
                <asp:UpdatePanel ID="UpdatePanelMod2" runat="server">
                <ContentTemplate>
                <div>
                    <asp:Label CssClass="Label" ID="LabelModVards" runat="server" Text="Vārds:"></asp:Label>
                    <asp:TextBox CssClass="textBox" ID="TextModVards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>                                
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelModUzvards" runat="server" Text="Uzvārds:"></asp:Label>
                    <asp:TextBox CssClass="textBox" ID="TextModUzvards" runat="server" maxlength="25" autocomplete="off"></asp:TextBox>
                </div>
                <div>            
                    <asp:Label CssClass="Label" ID="LabelModAtzime_1" runat="server" Text="Atzīme 1:"></asp:Label>
                    <asp:DropDownList  CssClass="dropDownList" ID="DropModAtzime_1" runat="server">
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
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelModAtzime_2" runat="server" Text="Atzīme 2:"></asp:Label>
                    <asp:DropDownList  CssClass="dropDownList" ID="DropModAtzime_2" runat="server">
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
                </div>
                <div>
                    <asp:Label CssClass="Label" ID="LabelModAtzime_3" runat="server" Text="Atzīme 3:"></asp:Label>
                    <asp:DropDownList  CssClass="dropDownList" ID="DropModAtzime_3" runat="server">
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
                </div>
                </ContentTemplate>
                </asp:UpdatePanel>                
                <div>
                    <asp:Button CssClass="singleButtonMid" ID="BtnModSubmit" runat="server" Text="Labot" 
                       OnClientClick="javascript:return confirm('Vai tiešām vēlies labot šo ierakstu?');" OnClick="BtnModSubmit_Click"/>
                </div>
            </div>            
        </div>
    </form>
</body>
</html>
