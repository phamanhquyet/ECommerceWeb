<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ECommerceWeb.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="main">
        <div class="banner">
            <img src="./images/banner.jpg" alt="Banner">
        </div>

        <%--<div class="product-category">
            <h3>Product Category</h3>

            <div class="container-fluid">
                
              <%--  <div class="row category-list">
                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/skin-care.jpg" alt="Skin Care">
                            <p>Skin Care</p>                            
                        </a>
                    </div>

                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/LaptopPC.jpg" alt="Laptop & PC">
                            <p>Laptop & PC</p>
                        </a>
                    </div>

                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/Smartphone.jpg" alt="Smartphone">
                            <p>Smartphone</p>
                        </a>
                    </div>

                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/Fashion.jpg" alt="Fashion">
                            <p>Fashion</p>
                        </a>
                    </div>

                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/Sepatu.jpg" alt="Sepatu">
                            <p>Sepatu</p>
                        </a>
                    </div>

                    <div class="category-item col col-lg-2">
                        <a href="#">
                            <img src="./images/Elektronik.jpg" alt="Electronic">
                            <p>Electronic</p>
                        </a>
                    </div>
                </div>--%>
            </div>
        </div>

        <div class="all-product">
            <h2>ALL PRODUCTS</h2>
            <div class="container-fluid">
                <div class="row product-list">
                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
                            <div class="buy-container">
                                <span class="price">$ 2,800</span>
                                <button class="btn-buy btn">
                                    <span>Buy</span>
                                    <img src="./images/bag-plus.png" alt="">
                                </button>
                            </div>
                        </a>
                    </div>

                    <div class="product-item col col-lg-3">
                        <a class="product-link" href="#">
                            <div class="product-image">
                                <img src="./images/product-1.jpg" alt="Product">
                            </div>
    
                            <p class="category-name">Laptop & PC</p>
                            <h3 class="product-name">ASUS X441UV</h3>
                            <p class="desc">consectetur adipiscing elit duis tristique sollicitudin nibh sit amet commodo....</p>
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
</asp:Content>
