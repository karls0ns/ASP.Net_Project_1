<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="LD2.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dati</title>
    <link href="Main.css" rel="stylesheet" />
</head>
<body>
    <form id="formData" runat="server">
        
        <h1> 
            <asp:ImageButton ID="btnHome" ImageUrl="~/Image/btnHome.png" runat="server" Width="45px" OnClick="btnHome_Click"/>
        Eksāmenu rezultāti
        </h1>
        <div>
            <asp:GridView ID="tbDati" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="center">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>    
            <%--<script>
                function ConectFailed() {
                    alert('Savienojums ar datu bāzi nav izveidots! \nPēc neilga brīža mēģiniet vēlreiz!');
                }
            </script>--%>
         </div>
    </form>
</body>
</html>
