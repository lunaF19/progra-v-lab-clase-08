<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormQueryStrings.aspx.cs" Inherits="PrograV_Clase8.Pages.FormQueryStrings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <strong>Customer Name: </strong>
        <asp:Label ID="lblQRCustomerName" runat="server" Text=""></asp:Label>
    </p>

     <p>
         <strong>Customer Lastname: </strong>
         <asp:Label ID="lblQRCustomerLastname" runat="server" Text=""></asp:Label>
     </p>


     <p>
         <strong>Customer Country: </strong>
         <asp:Label ID="lblQRCustomerCountry" runat="server" Text=""></asp:Label>
     </p>


     <p>
         <strong>Customer Age: </strong>
         <asp:Label ID="lblQRCustomerAge" runat="server" Text=""></asp:Label>
     </p>

    <p>
        <strong>Customer Phone: </strong>
        <asp:Label ID="lblQRCustomerPhone" runat="server" Text=""></asp:Label>
    </p>

   

</asp:Content>
