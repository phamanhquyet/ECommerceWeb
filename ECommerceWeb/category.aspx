<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="ECommerceWeb.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="category">
        <div class="category-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col col-lg-3 col-xs-12">
                        <div class="category-block">
                           <%-- <a href="#">Skin Care</a>
                            <a href="#">Laptop & PC</a>
                            <a href="#">Smartphone</a>
                            <a href="#">Fashion</a>
                            <a href="#">Sepatu</a>
                            <a href="#">Electronic</a>--%>
                            <asp:DataList ID="DataList1" runat="server"  >
                                 <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("TenLoai") %>'
                                    CommandArgument='<%# Eval("MaLoai") %>' OnClick="LinkButton1_Click">
                                    </asp:LinkButton>
                                 </ItemTemplate>
                         </asp:DataList>
                        </div>
                    </div>

                    <div class="col col-lg-9">
                        <div class="all-product">
                            <div class="container-fluid">
                                <div class="row product-list">


                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>

                                    <div class="product-item col col-lg-4 col-md-6 col-xs-12">
                                        <a class="product-link" href="#">
                                            <div class="product-image">
                                                <img src="./images/product-1.jpg" alt="Product">
                                            </div>

                                            <p class="category-name">Laptop & PC</p>
                                            <h3 class="product-name">ASUS X441UV</h3>
                                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh
                                                sit amet commodo....</p>
                                            <div class="buy-container">
                                                <span class="price">$ 2,800</span>
                                                <button class="btn-buy btn">
                                                    <span>Buy</span>
                                                    <img src="./images/bag-plus.png" alt="">
                                                </button>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
