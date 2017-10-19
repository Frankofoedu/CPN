<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--Header-->
    <section id="header">
        <div class="container">
            <div class="row header-info">
                <div class="col-sm-6 col-sm-offset-3 text-center animated fadeIn">
                    <h1>Welcome To CPN ONLINE PORTAL</h1>
                    <hr>
                    <h3 class="white">Become a computer professional with ease</h3>
                </div>
            </div>

            <div class="row animated fadeInUpBig">
                <div class="col-sm-6 col-sm-offset-3 text-center">
                    <a href="Account/Login.aspx" class="btn btn-success btn-lg">Login</a> &nbsp; <a href="Account/Register.aspx" class="btn btn-success btn-lg">Register</a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
