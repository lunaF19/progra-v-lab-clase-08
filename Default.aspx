<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrograV_Clase8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Label ID="lblCustomerName" runat="server" Text="Name: ">
            <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
        </asp:Label>

        <asp:Label ID="lblCustomerLastname" runat="server" Text="Lastname: ">
            <asp:TextBox ID="txtCustomerLastname" runat="server"></asp:TextBox>
        </asp:Label>


        <asp:Label ID="lblCustomerContry" runat="server" Text="Country ">
            <asp:TextBox ID="txtCustomerContry" runat="server"></asp:TextBox>
        </asp:Label>


        <asp:Label ID="lblCustomerAge" runat="server" Text="Age: ">
           <asp:TextBox ID="txtCustomerAge" runat="server"></asp:TextBox>
       </asp:Label>

         <asp:Label ID="lblCustomerPhone" runat="server" Text="Phone: ">
            <asp:TextBox ID="txtCustomerPhone" runat="server"></asp:TextBox>
        </asp:Label>


        <asp:Button ID="btnSendData" runat="server" Text="Add" OnClick="btnSendData_Click" />
        
    </main>

</asp:Content>
