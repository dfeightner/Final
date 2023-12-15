<%@ Page Title="ResearchAreas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResearchAreas.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.ResearchAreas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Repeater ID="ResearchArea" runat="server">
            <ItemTemplate>
                <a href="Projects.aspx?RA=<%# Eval("ResearchID") %>">
                    <%# Eval("ResearchName") %>
                </a>
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </main>

</asp:Content>