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
                            <asp:DataList ID="DataList1" runat="server">
                                <ItemTemplate>
                                    <div class="categoy-link">
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("TenLoai") %>'
                                            CommandArgument='<%# Eval("MaLoai") %>' OnClick="LinkButton1_Click">
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
