<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="ECommerceWeb.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="detail-page">
        <div class="container-fluid">
            <div class="row product-detail">
                <div class="col col-lg-5">
                    <img src="./images/product-1.jpg" alt="">
                </div>

                <div class="col col-lg-7">
                    <div class="product-info">
                        <p class="category">Laptop & PC</p>
                        <h3>ASUS X441UV</h3>
                        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                            exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                            in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
                            sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                            laborum.</p>

                        <p class="price">$ 2,800</p>
                        
                        <div class="quantity">
                            <span>Quantity</span>
                            <input type="number" class="quantity-form" name="quantity" value="1">
                        </div>
                        <button class="btn btn-login add-to-cart">Add to cart</button>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <div id="category">
        <div class="category-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col col-lg-3 col-xs-12">
                        <div class="category-block">
                            <asp:DataList ID="DataList2" runat="server">
                                <ItemTemplate>
                                    <div class="categoy-link">
                                        <asp:LinkButton ID="LinkButton2" runat="server" Text='<%# Eval("TenLoai") %>'
                                            CommandArgument='<%# Eval("MaLoai") %>' OnClick="LinkButton2_Click">
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                     <div class="container-lg pt-2">

                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CssClass="tbl">

                        <ItemTemplate>
                            <div class="tbl-item">
                                <div class="img-container">
                                    <asp:Image ID="Image1" runat="server" Height="300px" Width=" 250px" ImageUrl='<%# Eval("HinhAnh") %>' />
                                </div>
                                <br />
                                <h3 class="product-title">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>' CssClass="py-1"></asp:Label>
                                </h3>
                                <br />
                                <h4>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>' CssClass="py-1"></asp:Label>
                                </h4>
                                <br />
                                <%--       <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                                <br />--%>

                                <div class="btn-primary">
                                    <asp:LinkButton ID="LinkButton1" runat="server"
                                        CommandArgument='<%# Eval("MaHang") %>'
                                        OnClick="LinkButton1_Click">Chi tiết</asp:LinkButton>
                                </div>
                            </div>

                        </ItemTemplate>

                    </asp:DataList>

    </div>
                </div>
            </div>
        </div>
    

    
   

</asp:Content>
