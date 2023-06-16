<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ECommerceWeb.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="main">
        <div class="banner">
            <img src="./images/banner.jpg" alt="Banner">
        </div>

         

        <div class="all-product">
            <h2>ALL PRODUCTS</h2>
            <div class="" style="width:100%">
                        <div class="tbl row">
                            <asp:DataList ID="dtl_AllSP" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" ItemStyle-Width="20%">
                                <ItemTemplate>
                                    <div class="tbl-item">
                                        <div class="img-container img-container-medium">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("HinhAnh") %>' />
                                        </div>
                                        <br />
                                        <h3 class="product-title">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>' CssClass="py-1"></asp:Label>
                                        </h3>
                                        <br />
                                        <h4>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:#,### đ}") %>' CssClass="py-1"></asp:Label>
                                        </h4>
                                        <br />
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
