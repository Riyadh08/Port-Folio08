<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateSkills.aspx.cs" Inherits="Ryad_PortFolio.updateSkills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Skills</title>
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

        #form1 input {
            margin-bottom: 10px;
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        #form1 .btn {
            padding: 12px 24px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        #form1 .btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="noTextBox" runat="server" placeholder="Id"></asp:TextBox>
            <br />
            <asp:TextBox ID="fieldTextBox" runat="server" placeholder="Skills"></asp:TextBox>
            <br />
            <asp:TextBox ID="desTextBox" runat="server" placeholder="Durations"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click" CssClass="btn" />
        </div>
    </form>
</body>
</html>
