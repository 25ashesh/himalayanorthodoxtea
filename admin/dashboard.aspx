<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="himalayanorthodoxtea.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div>
          <asp:Label ID="Label5" Text="Total visits: " style="font-size:large;color:Black;" runat="server"></asp:Label>
          <asp:Label ID="lblHits" style="font-size:large;color:Purple;" runat="server"></asp:Label>
         <br/><br/> 
          <asp:Label ID="Label1"  Text="Total orders: " style="font-size:large;color:Black;" runat="server"></asp:Label>
         <asp:Label ID="Label2" style="font-size:large;color:Green;" runat="server"></asp:Label>
         <br/><br/>
         <asp:Label ID="Label3" Text="Orders dispatched: " style="font-size:large;color:Black;" runat="server"></asp:Label>
         <asp:Label ID="Label4" style="font-size:large;color:Blue;"  runat="server"></asp:Label>
         <br/><br/><br/><br/>

</div>
   
    <p style="color:Black;font-size:large;">Pricing List</p>
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="pricelistid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="pricelistid" HeaderText="pricelistid" 
                InsertVisible="False" ReadOnly="True" SortExpression="pricelistid" />
            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:smtConnectionString %>" 
        DeleteCommand="DELETE FROM [PricingList] WHERE [pricelistid] = @pricelistid" 
        InsertCommand="INSERT INTO [PricingList] ([Types], [Price]) VALUES (@Types, @Price)" 
        SelectCommand="SELECT * FROM [PricingList]" 
        UpdateCommand="UPDATE [PricingList] SET [Types] = @Types, [Price] = @Price WHERE [pricelistid] = @pricelistid">
        <DeleteParameters>
            <asp:Parameter Name="pricelistid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Types" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Types" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="pricelistid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>

        <br/><br/>
        <p style="color:Black;font-size:large;">Stock in Inventory</p>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="stockid" DataSourceID="SqlDataSource2" 
        Width="200px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="stockid" HeaderText="stockid" InsertVisible="False" 
                ReadOnly="True" SortExpression="stockid" />
            <asp:BoundField DataField="PremiumTeaInStock" HeaderText="PremiumTea" 
                SortExpression="PremiumTeaInStock" />
            <asp:BoundField DataField="GreenTeaInStock" HeaderText="GreenTea" 
                SortExpression="GreenTeaInStock" />
            <asp:BoundField DataField="GradeATeaInStock" HeaderText="GradeATea" 
                SortExpression="GradeATeaInStock" />
            <asp:BoundField DataField="GradeBTeaInStock" HeaderText="GradeBTea" 
                SortExpression="GradeBTeaInStock" />
            <asp:BoundField DataField="GradeCTeaInStock" HeaderText="GradeCTea" 
                SortExpression="GradeCTeaInStock" />
            <asp:BoundField DataField="TeaSpicesInStock" HeaderText="TeaSpices" 
                SortExpression="TeaSpicesInStock" />
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
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:smtConnectionString %>" 
        DeleteCommand="DELETE FROM [StockInventory] WHERE [stockid] = @stockid" 
        InsertCommand="INSERT INTO [StockInventory] ([PremiumTeaInStock], [GreenTeaInStock], [GradeATeaInStock], [GradeBTeaInStock], [GradeCTeaInStock], [TeaSpicesInStock]) VALUES (@PremiumTeaInStock, @GreenTeaInStock, @GradeATeaInStock, @GradeBTeaInStock, @GradeCTeaInStock, @TeaSpicesInStock)" 
        SelectCommand="SELECT * FROM [StockInventory]" 
        UpdateCommand="UPDATE [StockInventory] SET [PremiumTeaInStock] = @PremiumTeaInStock, [GreenTeaInStock] = @GreenTeaInStock, [GradeATeaInStock] = @GradeATeaInStock, [GradeBTeaInStock] = @GradeBTeaInStock, [GradeCTeaInStock] = @GradeCTeaInStock, [TeaSpicesInStock] = @TeaSpicesInStock WHERE [stockid] = @stockid">
        <DeleteParameters>
            <asp:Parameter Name="stockid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PremiumTeaInStock" Type="String" />
            <asp:Parameter Name="GreenTeaInStock" Type="String" />
            <asp:Parameter Name="GradeATeaInStock" Type="String" />
            <asp:Parameter Name="GradeBTeaInStock" Type="String" />
            <asp:Parameter Name="GradeCTeaInStock" Type="String" />
            <asp:Parameter Name="TeaSpicesInStock" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PremiumTeaInStock" Type="String" />
            <asp:Parameter Name="GreenTeaInStock" Type="String" />
            <asp:Parameter Name="GradeATeaInStock" Type="String" />
            <asp:Parameter Name="GradeBTeaInStock" Type="String" />
            <asp:Parameter Name="GradeCTeaInStock" Type="String" />
            <asp:Parameter Name="TeaSpicesInStock" Type="String" />
            <asp:Parameter Name="stockid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
