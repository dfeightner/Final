<%@ Page Title="Projects" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.Projects" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Repeater ID="Project" runat="server">
            <ItemTemplate>
                <a href="ProjectDetails.aspx?ProjectID=<%# Eval("ProjectID") %>">
                    <%# Eval("ProjectName") %>
                </a>
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </main>

</asp:Content>