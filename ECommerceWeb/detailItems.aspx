<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="detailItems.aspx.cs" Inherits="ECommerceWeb.detailItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-10 my-2">
        <asp:Repeater ID="DataList1" runat="server">
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

                <div class="detail-item row">
                    <div class="col col-lg-5 col-xs-12">
                        <div class="img-container img-container-large">
                            <asp:Image ID="Image1" runat="server" Height="100%" Width="100%" ImageUrl='<%# Eval("HinhAnh") %>' />
                        </div>
                    </div>
                    <div class="col col-lg-7 col-xs-12">
                        <h2 class ="py-1">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>' CssClass="py-1"></asp:Label>
                        </h2>
                        <h4 class ="py-1">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:#,### đ}") %>' CssClass="py-1 product-price"></asp:Label>
                        </h4>
                     
                        <div class ="py-1">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>' CssClass="product-desc"></asp:Label>
                        </div>

                        <div class ="py-1">
                            <span>Số lượng</span>
                            <asp:TextBox ID="txtQuantity" TextMode="Number" min ="1" ClientIDMode="Static" runat="server"></asp:TextBox>
                        </div>

                        <div class="btn-primary my-2">
                            <asp:LinkButton ID="BtnAddToCart" runat="server"
                                CommandArgument='<%# Eval("MaHang") %>'
                                OnClick="BtnAddToCart_Click">Thêm vào giỏ hàng</asp:LinkButton>
                        </div>

                    </div>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
