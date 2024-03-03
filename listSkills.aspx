<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listSkills.aspx.cs" Inherits="Ryad_PortFolio.listSkills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List Skills</title>
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

        .table-container {
            text-align: center;
        }

        .table-container .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table-container th, .table-container td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .table-container th {
            background-color: #3498db;
            color: #fff;
        }

        .table-container tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table-container .link-buttons {
            display: flex;
            justify-content: center;
        }

        .table-container .link-buttons a {
            display: inline-block;
            margin-right: 10px;
            padding: 6px 12px;
            text-decoration: none;
            color: #fff;
            background-color: #3498db;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .table-container .link-buttons a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="table-container">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false" OnRowCommand="CoursesGridView_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="ID" />
                            <asp:BoundField DataField="Field" HeaderText="Skills Are:" />
                            <asp:BoundField DataField="Description" HeaderText="Durations" />
                            <asp:TemplateField HeaderText="Actions">
                                <ItemTemplate>
                                    <div class="link-buttons">
                                        <asp:LinkButton ID="updateLinkButton" CommandName="upd" CommandArgument='<%# Eval("Id") %>' runat="server">Update</asp:LinkButton>
                                        <asp:LinkButton ID="deleteLinkButton" CommandName="del" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure to delete?')" runat="server">Delete</asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
