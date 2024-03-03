<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addSkills.aspx.cs" Inherits="Ryad_PortFolio.addSkills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Skills</title>
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
            background-color: #fff; /* White background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-container {
            text-align: center;
        }

        .form-container input {
            margin-bottom: 10px;
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container .btn {
            padding: 12px 24px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-container">
        <asp:TextBox ID="noTextBox" runat="server" placeholder="Id"></asp:TextBox>
        <br />
        <asp:TextBox ID="fieldTextBox" runat="server" placeholder="Enter Skills"></asp:TextBox>
        <br />
        <asp:TextBox ID="desTextBox" runat="server" placeholder="Durations"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" CssClass="btn" />
    </form>
</body>
</html>
