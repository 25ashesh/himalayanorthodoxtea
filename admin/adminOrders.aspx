<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminOrders.aspx.cs" Inherits="himalayanorthodoxtea.adminOrders" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="orderId" DataSourceID="SqlDataSource1" AllowPaging="True" 
            AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="orderId" />
                <asp:BoundField DataField="OrdererName" HeaderText="OrdererName" 
                    SortExpression="OrdererName" />
                <asp:BoundField DataField="OrdererLastName" HeaderText="OrdererLastName" 
                    SortExpression="OrdererLastName" />
                <asp:BoundField DataField="OrdererMobileNo" HeaderText="OrdererMobileNo" 
                    SortExpression="OrdererMobileNo" />
                <asp:BoundField DataField="OrdererAddress" HeaderText="OrdererAddress" 
                    SortExpression="OrdererAddress" />
                <asp:BoundField DataField="OrderPlacedDate" HeaderText="OrderPlacedDate" 
                    SortExpression="OrderPlacedDate"></asp:BoundField>
                <asp:BoundField DataField="OrderPurpose" HeaderText="OrderPurpose" 
                    SortExpression="OrderPurpose" />
                <asp:BoundField DataField="OrderDescription" HeaderText="OrderDescription" 
                    SortExpression="OrderDescription" />

                <asp:BoundField DataField="ShipmentDate" HeaderText="ShipmentDate" 
                    SortExpression="ShipmentDate" />             
               
                <asp:CheckBoxField DataField="PremiumTeaOrder" HeaderText="PremiumTea" 
                    SortExpression="PremiumTeaOrder" />
                <asp:BoundField DataField="PremiumTeaQuantity" HeaderText="PremiumTeaQuantity" 
                    SortExpression="PremiumTeaQuantity" />

                <asp:CheckBoxField DataField="GreenTeaOrder" HeaderText="GreenTea" 
                    SortExpression="GreenTeaOrder" />
                <asp:BoundField DataField="GreenTeaQuantity" HeaderText="GreenTeaQuantity" 
                    SortExpression="GreenTeaQuantity" />

                <asp:CheckBoxField DataField="GradeAOrder" HeaderText="GradeA" 
                    SortExpression="GradeAOrder" />
                <asp:BoundField DataField="GradeATeaQuantity" HeaderText="GradeAQuantity" 
                    SortExpression="GradeATeaQuantity" />

                <asp:CheckBoxField DataField="GradeBOrder" HeaderText="GradeB" 
                    SortExpression="GradeBOrder" />
                <asp:BoundField DataField="GradeBTeaQuantity" HeaderText="GradeBQuantity" 
                    SortExpression="GradeBTeaQuantity" />

                <asp:CheckBoxField DataField="GradeCOrder" HeaderText="GradeC" 
                     SortExpression="GradeCOrder" />
                <asp:BoundField DataField="GradeCTeaQuantity" HeaderText="GradeCQuantity" 
                    SortExpression="GradeCTeaQuantity" />

                <asp:CheckBoxField DataField="TeaSpiceOrder" HeaderText="TeaSpice" 
                                    SortExpression="TeaSpiceOrder" />
                <asp:BoundField DataField="TeaSpicesQuantity" HeaderText="TeaSpicesQuantity" 
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
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:smtConnectionString %>" 
            SelectCommand="SELECT * FROM [orderForm] ORDER BY [OrderPlacedDate], [ShipmentDate] DESC"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
