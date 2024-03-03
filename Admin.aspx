<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Ryad_PortFolio.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <style>
        body {
            background-color: #87CEEB; /* Water blue color */
            font-family: 'Arial', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        #form1 {
            text-align: center;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container .btn {
            padding: 12px 24px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button-container .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="button-container">
            <asp:Button ID="addId" runat="server" Text="Add Skill" OnClick="addId_Click" CssClass="btn" />
            <asp:Button ID="showId" runat="server" Text="Show Skill" OnClick="showId_Click" CssClass="btn" />
        </div>
    </form>
</body>
</html>
