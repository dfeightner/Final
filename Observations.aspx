<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Observations.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.Observations" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <h1>Observations</h1>
    <asp:Panel ID="Observation" runat="server" visible="false">
         <label for="Date">Observed Date</label>
    <asp:TextBox ID="Date" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    <br />
    <label for="Notes">Notes:</label>
        <asp:TextBox ID="Notes" runat="server" />
    <asp:Button ID="Submit" runat="server" Text="Create Observation" OnClick="Create_Click" CssClass="btn btn-primary" ></asp:Button>
        </asp:Panel>

   
   
    
</asp:Content>
