<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportDetails.aspx.cs" Inherits="Feightner_Dominic_CitizenScience.ReportDetails" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Panel ID="errorMsgPan" runat="server" Visible="false">Something Went Wrong</asp:Panel>
        <asp:Panel ID="ObservationTablePanel" runat="server" Visible="false">
            <asp:Repeater ID="ObservationTable" runat="server">

<HeaderTemplate>

    <table class ="table table-striped">
        <thead>
            <tr>
                <th> Observation ID</th>
                <th> Observation Date</th>
                <th> Value</th>
                <th> Notes</th>
                <th> Tool ID</th>
                <th> Latitude</th>
                <th> Longitude</th>
                <th> Report ID</th>
            </tr>
        </thead>
        <tbody>
</HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ObservationID") %></td>
                        <td><%# Eval("ObservedDate") %></td>
                        <td><%# Eval("Value") %></td>
                        <td><%# Eval("Notes") %></td>
                        <td><%# Eval("ToolID") %></td>
                        <td><%# Eval("Latitude") %></td>
                        <td><%# Eval("Longitude") %></td>
                        <td><%# Eval("ReportID") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </asp:Panel>
        <asp:Repeater ID="Report" runat="server">
            <ItemTemplate>
                <a href="Observations.aspx?ID=<%# Eval("ReportID") %>" class="btn">Add Observation
                </a>
                <br />
            </ItemTemplate>
        </asp:Repeater>
    </main>

</asp:Content>