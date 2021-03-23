<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/Sidebar.css" rel="stylesheet" />
    <script src="Java/Sidebar.js"></script>
    <title>Index</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!Start of sidebar Code>

   <div id ="sidebar">
   <div class="toggle-btn" onclick="toggleSidebar()">
   <span></span>
   <span></span>
   <span></span>
   </div> 
   <ul> 
        <li>Home</li>
        <li>Hardware</li>
        <li>Software</li>
   </ul>
   </div>

<! End Sidebar Code>



        </div>
    </form>
</body>
</html>
