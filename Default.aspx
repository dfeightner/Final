<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Feightner_Dominic_CitizenScience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Citizen Science DB</h1>
            <p class="lead">Learn more about the research projects and institutions</p>
            <p><a href="https://localhost:44346/Institutions" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Institutions</h2>
                <p>
                    Search for research areas and projects by institution
                </p>
                <p>
                    <a class="btn btn-default" href="https://localhost:44346/Institutions">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Research Areas</h2>
                <p>
                    Learn more about each research area
                </p>
                <p>
                    <a class="btn btn-default" href="https://localhost:44346/ResearchAreas">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Observation Submission</h2>
                <p>
                    Submit your own observation!
                </p>
                <p>
                    <a class="btn btn-default" href="https://localhost:44346/Observations">Learn more &raquo;</a>
                </p>
            </section>
            <img src="https://i.pinimg.com/736x/4b/83/aa/4b83aa28958914ed9c6cbb9b8ca2e7d1.jpg" alt="Diverse People">
        </div>
    </main>

</asp:Content>
