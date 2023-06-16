<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ECommerceWeb.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="cart-page">
        <div class="container-fluid">
            <div class="row">
                <div class="list-order col col-lg-7">
                    <h3>Shopping continue</h3>

                    <h3>Shopping cart</h3>
                    <p>
                        <asp:Label ID="lblWarning" runat="server" Text="You need to login to access cart"></asp:Label>
                    </p>
             
                    <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                            <div class="item">
                                <div class="info">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                                    <div>
                                        <h4>
                                            <asp:Label ID="LblTenHang" runat="server" Text='<%# Eval("TenHang") %>' CssClass="py-1"></asp:Label>
                                        </h4>
                                        <p>
                                            <asp:Label ID="LblLoaiHang" runat="server" Text='<%# Eval("TenLoai") %>' CssClass="py-1"></asp:Label>
                                        </p>
                                    </div>
                                </div>

                                <div class="action">
                                    <asp:Label ID="Label2" class="price" runat="server" Text="Total:"></asp:Label>                                    
                                    <asp:Label ID="Label1" class="price" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label>
                             
                                </div>
                            </div>
                              
                            </ItemTemplate>
                    </asp:Repeater>
                   

<%--                    <div class="item">
                        <div class="info">
                            <img src="./images/product-1.jpg" alt="">
                            <div>
                                <h4>ASUS X441UV</h4>
                                <p>Laptop & PC</p>
                            </div>
                        </div>

                        <div class="action">
                            <input type="number" class="quantity-form" name="quantity" value="1">
    
                            <span class="price">$319</span>
    
                            <button class="btn btn-light trash">
                                <svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <rect width="25" height="25" fill="url(#pattern0)" style="mix-blend-mode:luminosity" />
                                    <defs>
                                        <pattern id="pattern0" patternContentUnits="objectBoundingBox" width="1" height="1">
                                            <use xlink:href="#image0_0_50" transform="scale(0.01)" />
                                        </pattern>
                                        <image id="image0_0_50" width="100" height="100"
                                            xlink:href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAABmJLR0QA/wD/AP+gvaeTAAADHklEQVR4nO3dzUobYRjF8fOkEzdtBRfNolVwHzdtCCHmDkTwBuyurSK9jt5BbSWUQtsr6Ae9ABeZEOOmTbeKWlw32o0h83SjEIKFdvJOctTzAyHvMHnmlT8TMC4GEBERSccmvYG/KRaLU9PT088ArAJYAHB7xJG/3f2bmX3odrv1TqdzNvouw6MMUqvV7idJ8hnAw4wusRtF0fL29vZxRvNTy016A8OKxeJUxjEA4FG/3/9UKpXyGV4jFbog5x9TWcYAALh7KZ/PP8n6Ov8rmvQGLrE6tP4CYK3RaPwcZWilUpk1sy0zW7o4ZmaPAbwaZW5odHcIgOLgIkmS9VFjAECz2Tzq9/vrQ4cXRp0bGmOQO4OLZrN5FGpwq9U6HDp0N9TsUBiD3GgKQkZByKT+w7BWqy0lSfISwHzA/VwH++6+Ecfx1zRvTn2HuPtrKMZl5s2snvbN+sgikzpIkiRrAPYC7uW62AOQ+huAYF8uVqtVH1w3Gg3KLy5Dyer31UcWGQUhoyBkFISMgpBREDIKQkZByCgIGbr/qS8uLq64ex2Au/vTOI4/TvL8caO7Q9x9E8A9AAUz25z0+eNGFwTA/YHXDwjOHyvGIDeagpBREDIKQkZByCgIGQUhoyBkFISMgpBREDIKQkZByCgIGQUhoyBkFISMgpBREDIKQkZByCgIGQUhoyBkFISMgpBREDIKQkZByCgIGQUhoyBkFISMgpBREDIKQkZByCgIGQUhoyBkFISMgpBREDIKQkZByCgIGQUhoyBkFIQMY5D9gdf/8jiMrM8fK7og7r4B4Oj8Z2PS54+bnh+Skp4fckMoCBkFIaMgZBSEjIKQURAyIYOcDC4qlcpswNlUyuXy3NChk0tPTCFkkB+DCzPbuo5RyuXyXBRFW0OHv4eaH/L5Ie8BVC4WZrZkZofVajXgJTi5+7tQs4LdId1utw5gN9S8K6TV6/XehBoWLEin0zmLomjZzNqhZl4BO1EUrbTb7V6ogbdCDQKAg4OD00Kh8DaXyx2b2QyAGQBTIa9B4BTAjru/6PV6z+M4/jXpDYmIiADAH5sq34HRT4luAAAAAElFTkSuQmCC" />
                                    </defs>
                                </svg>
                            </button>
                        </div>
                    </div>
                </div>--%>

              <%--  <div class="card-detail col col-lg-5">
                    <div>
                        <h3>Cart Detail</h3>
                        <div class="total-price">
                            <p>- Total Price:</p>
                            <p>$1000</p>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
