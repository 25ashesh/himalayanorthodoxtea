<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="newOrders.aspx.cs" Inherits="himalayanorthodoxtea.admin.newOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
<div>
    <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>
        </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="5" DataKeyNames="orderId" DataSourceID="SqlDataSource1" 
        AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" 
                ReadOnly="True" SortExpression="orderId" />
             <asp:CheckBoxField DataField="Dispatched" HeaderText="Dispatched" 
                    SortExpression="Dispatched" />   
            <asp:BoundField DataField="OrdererName" HeaderText="OrdererName" 
                SortExpression="OrdererName" />
             <asp:BoundField DataField="OrderPlacedDate" HeaderText="OrderPlacedDate" 
                SortExpression="OrderPlacedDate" />
 
            

            <asp:BoundField DataField="OrdererAddress" HeaderText="OrdererAddress" 
                SortExpression="OrdererAddress" />
            <asp:BoundField DataField="PremiumTeaQuantity" HeaderText="PremiumTeaQty" 
                SortExpression="PremiumTeaQuantity" />
            <asp:BoundField DataField="GreenTeaQuantity" HeaderText="GreenTeaQty" 
                SortExpression="GreenTeaQuantity" />
            <asp:BoundField DataField="GradeATeaQuantity" HeaderText="GradeATeaQty" 
                SortExpression="GradeATeaQuantity" />
            <asp:BoundField DataField="GradeBTeaQuantity" HeaderText="GradeBTeaQty" 
                SortExpression="GradeBTeaQuantity" />
            <asp:BoundField DataField="GradeCTeaQuantity" HeaderText="GradeCTeaQty" 
                SortExpression="GradeCTeaQuantity" />
            <asp:BoundField DataField="TeaSpicesQuantity" HeaderText="TeaSpicesQty" 
                SortExpression="TeaSpicesQuantity" />



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
        
        
       SelectCommand="select orderId, Dispatched, OrdererName, OrderDescription, PremiumTeaQuantity,GreenTeaQuantity,GradeATeaQuantity,GradeBTeaQuantity,GradeCTeaQuantity, TeaSpicesQuantity, OrdererAddress, OrderPlacedDate from dbo.orderForm where (PremiumTeaOrder = 1 OR GreenTeaOrder = 1 OR GradeAOrder = 1 OR GradeBOrder = 1 OR GradeCOrder = 1 OR TeaSpiceOrder = 1)"
       DeleteCommand="DELETE FROM [orderForm] WHERE [orderId] = @orderId" 
        InsertCommand="INSERT INTO [orderForm] ([OrdererName], [Dispatched], [OrdererAddress], [PremiumTeaQuantity], [GreenTeaQuantity], [GradeATeaQuantity], [GradeBTeaQuantity], [GradeCTeaQuantity], [TeaSpicesQuantity], [OrderPlacedDate], [OrdererMobileNo]) VALUES (@OrdererName, @Dispatched, @OrdererAddress, @PremiumTeaQuantity, @GreenTeaQuantity, @GradeATeaQuantity, @GradeBTeaQuantity, @GradeCTeaQuantity, @TeaSpicesQuantity, @OrderPlacedDate, @OrdererMobileNo)" 
        UpdateCommand="UPDATE [orderForm] SET [OrdererName] = @OrdererName, [Dispatched] = @Dispatched, [OrdererAddress] = @OrdererAddress, [PremiumTeaQuantity] = @PremiumTeaQuantity, [GreenTeaQuantity] = @GreenTeaQuantity, [GradeATeaQuantity] = @GradeATeaQuantity, [GradeBTeaQuantity] = @GradeBTeaQuantity, [GradeCTeaQuantity] = @GradeCTeaQuantity, [TeaSpicesQuantity] = @TeaSpicesQuantity, [OrderPlacedDate] = @OrderPlacedDate, [OrdererMobileNo] = @OrdererMobileNo WHERE [orderId] = @orderId">
        <DeleteParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrdererName" Type="String" />
            <asp:Parameter Name="Dispatched" Type="Boolean" />
            <asp:Parameter Name="OrdererAddress" Type="String" />
            <asp:Parameter Name="PremiumTeaQuantity" Type="String" />
            <asp:Parameter Name="GreenTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeATeaQuantity" Type="String" />
            <asp:Parameter Name="GradeBTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeCTeaQuantity" Type="String" />
            <asp:Parameter Name="TeaSpicesQuantity" Type="String" />
            <asp:Parameter Name="OrderPlacedDate" Type="String" />
            <asp:Parameter Name="OrdererMobileNo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrdererName" Type="String" />
            <asp:Parameter Name="Dispatched" Type="Boolean" />
            <asp:Parameter Name="OrdererAddress" Type="String" />
            <asp:Parameter Name="PremiumTeaQuantity" Type="String" />
            <asp:Parameter Name="GreenTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeATeaQuantity" Type="String" />
            <asp:Parameter Name="GradeBTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeCTeaQuantity" Type="String" />
            <asp:Parameter Name="TeaSpicesQuantity" Type="String" />
            <asp:Parameter Name="OrderPlacedDate" Type="String" />
            <asp:Parameter Name="OrdererMobileNo" Type="String" />
            <asp:Parameter Name="orderId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
 </div>

  
</asp:Content>
