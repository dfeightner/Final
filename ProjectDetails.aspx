<%@ Page Title="ProjectDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDetails.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.ProjectDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:gridview runat="server" ID="ProjectDetail"></asp:gridview>
         <a href="Observations.aspx" class="btn btn-primary">Add Observation</a>
    </main>

</asp:Content>