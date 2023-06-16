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
        
    	<asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" >
            <ItemTemplate> 
                    <asp:Image   ID="Image1" runat="server"  Height=" 150px" Width=" 200px"  ImageUrl='<%# Eval("HinhAnh") %>' />
                    <br />
                    <asp:Label  ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                    <br />
                    <asp:Label  ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    <br />
             <%--       <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    <br />--%>
                </div>
             <asp:LinkButton ID="LinkButton1" runat="server" 
                CommandArgument='<%# Eval("MaHang") %>'
                OnClick="LinkButton1_Click">Chi tiết</asp:LinkButton>
            </ItemTemplate>
             </asp:DataList>
</asp:Content>
