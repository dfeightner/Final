<%@ Page Title="Institutions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Institutions.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.Institutions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Repeater ID="Institution" runat="server">
            <ItemTemplate>
                <a href="ResearchAreas.aspx?InstituitonID=<%# Eval("InstitutionID") %>">
                    <%# Eval("InstitutionName") %>
                </a>
                <br />
               
            </ItemTemplate>
        </asp:Repeater>
    </main>

</asp:Content>