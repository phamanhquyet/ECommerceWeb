<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="detailItems.aspx.cs" Inherits="ECommerceWeb.detailItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" >
          <ItemTemplate> 
                    <div class ="product-items">
                        <asp:Image   ID="Image1" runat="server"  Height=" 150px" Width=" 200px"  ImageUrl='<%# Eval("HinhAnh") %>' />
                        <br />
                        <asp:Label  ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                        <br />
                        <asp:Label  ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                        <br />
                    </div>
            </ItemTemplate>
    </asp:DataList>
</asp:Content>
