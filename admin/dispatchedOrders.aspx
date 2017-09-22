<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dispatchedOrders.aspx.cs" Inherits="himalayanorthodoxtea.admin.dispatchedOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>

     <h3>Dispatched Orders</h3>
     <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="orderId" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
        BorderWidth="1px" CellPadding="7">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" 
                ReadOnly="True" SortExpression="orderId" />
            <asp:CheckBoxField DataField="Dispatched" HeaderText="Dispatched" 
                SortExpression="Dispatched" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />

         <pagersettings mode="Numeric" Position="Top" pagebuttoncount="10"/>

        <pagerstyle backcolor="#CCFF99" HorizontalAlign = "Left" CssClass = "GridPager" />

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:smtConnectionString %>"
    SelectCommand="SELECT [orderId], [Dispatched] FROM [orderForm] WHERE ([Dispatched] = 1)" 
    DeleteCommand="DELETE FROM [orderForm] WHERE [orderId] = @orderId" 
    InsertCommand="INSERT INTO [orderForm] ([Dispatched]) VALUES (@Dispatched)"  
    UpdateCommand="UPDATE [orderForm] SET [Dispatched] = @Dispatched WHERE [orderId] = @orderId">
        <DeleteParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Dispatched" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dispatched" Type="Boolean" />
            <asp:Parameter Name="orderId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>


<%--     <table border="1">
     <tr>
     <td>
</td>

<td>
        <h3>Pending Orders</h3>
     <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>You are viewing page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="orderId" DataSourceID="SqlDataSource2" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" 
                ReadOnly="True" SortExpression="orderId" />
            <asp:CheckBoxField DataField="Dispatched" HeaderText="Dispatched" 
                SortExpression="Dispatched" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <pagersettings mode="Numeric" Position="Top" pagebuttoncount="10"/>

        <pagerstyle backcolor="#FFFFCC" HorizontalAlign = "Center" 
            CssClass = "GridPager" ForeColor="#330099" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:smtConnectionString %>" 
        DeleteCommand="DELETE FROM [orderForm] WHERE [orderId] = @orderId" 
        InsertCommand="INSERT INTO [orderForm] ([Dispatched]) VALUES (@Dispatched)" 
        SelectCommand="SELECT [orderId], [Dispatched] FROM [orderForm] WHERE ([Dispatched] = 0)" 
        UpdateCommand="UPDATE [orderForm] SET [Dispatched] = @Dispatched WHERE [orderId] = @orderId">
        <DeleteParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Dispatched" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Dispatched" Type="Boolean" />
            <asp:Parameter Name="orderId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</td>--%>
</tr>
</table>
</div>
</asp:Content>
