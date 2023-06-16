<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="detailItems.aspx.cs" Inherits="ECommerceWeb.detailItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="tbl">
        <ItemTemplate>
            <%-- <div class ="product-items tbl-item">
                        <div class="img-container"> 
                            <asp:Image   ID="Image1" runat="server"  Height=" 150px" Width=" 200px"  ImageUrl='<%# Eval("HinhAnh") %>' />
                        </div>
                        
                        <br />
                        <asp:Label  ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                        <br />
                        <asp:Label  ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                        <br />
                    </div>--%>

            <div class="tbl-item">
                <div class="img-container">
                    <asp:Image ID="Image1" runat="server" Height="300px" Width=" 250px" ImageUrl='<%# Eval("HinhAnh") %>' />
                </div>
                <br />
                <h3>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>' CssClass="py-1"></asp:Label>
                </h3>
                <br />
                <h4>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>' CssClass="py-1"></asp:Label>
                </h4>
                <br />
                <%--       <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    <br />--%>
                <div>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                </div>

            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
