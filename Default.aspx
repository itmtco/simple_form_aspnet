<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <table style="border:1px solid #ff6a00">
           <tr><td><asp:Label ID="Label1" runat="server" Text="name:"></asp:Label></td><td>   <asp:TextBox ID="txtbxname" runat="server"></asp:TextBox></td></tr>
             <tr><td>
            <asp:Label ID="Label2" runat="server" Text="age:"></asp:Label></td><td><asp:TextBox ID="txtbxage" runat="server"></asp:TextBox>
                 </td></tr>
             <tr><td>
            <asp:Label ID="Label3" runat="server" Text="weight:"></asp:Label></td><td><asp:TextBox ID="txtbxweight" runat="server"></asp:TextBox>
      
                 </td></tr>
             <tr><td></td><td>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />

                 </td></tr>
             <tr><td></td><td>
        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                 </td></tr>
       </table>
         
            <br />
               <br />
      
        <br />

        <br />
    </form>
</body>
</html>
