<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="junkorders.aspx.cs" Inherits="himalayanorthodoxtea.admin.junkorders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
         <%=GridView1.PageCount%>of<%=GridView1.PageCount%></i></div>
    
        <br/>
        
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="8" DataKeyNames="orderId" DataSourceID="SqlDataSource1" 
        AllowPaging="True">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="cbDeleteHeader" runat="server" AutoPostBack="True" 
                        oncheckedchanged="cbDeleteHeader_CheckedChanged" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="cbDelete" runat="server" AutoPostBack="True" 
                        oncheckedchanged="CheckBox1_CheckedChanged" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:TemplateField HeaderText="orderId" InsertVisible="False" 
                SortExpression="orderId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblorderId" runat="server" Text='<%# Bind("orderId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="OrdererName" HeaderText="OrdererName" 
                SortExpression="OrdererName" />
            <asp:BoundField DataField="OrdererLastName" HeaderText="OrdererLastName" 
                SortExpression="OrdererLastName" />
            <asp:BoundField DataField="OrdererMobileNo" HeaderText="OrdererMobileNo" 
                SortExpression="OrdererMobileNo" />
            <asp:BoundField DataField="OrdererAddress" HeaderText="OrdererAddress" 
                SortExpression="OrdererAddress" />
            <asp:BoundField DataField="OrderPurpose" HeaderText="OrderPurpose" 
                SortExpression="OrderPurpose" />
            <asp:BoundField DataField="PremiumTeaQuantity" HeaderText="PremiumTeaQuantity" 
                SortExpression="PremiumTeaQuantity" />
            <asp:BoundField DataField="GreenTeaQuantity" HeaderText="GreenTeaQuantity" 
                SortExpression="GreenTeaQuantity" />
            <asp:BoundField DataField="GradeATeaQuantity" HeaderText="GradeATeaQuantity" 
                SortExpression="GradeATeaQuantity" />
            <asp:BoundField DataField="GradeBTeaQuantity" HeaderText="GradeBTeaQuantity" 
                SortExpression="GradeBTeaQuantity" />
            <asp:BoundField DataField="GradeCTeaQuantity" HeaderText="GradeCTeaQuantity" 
                SortExpression="GradeCTeaQuantity" />
            <asp:BoundField DataField="TeaSpicesQuantity" HeaderText="TeaSpicesQuantity" 
                SortExpression="TeaSpicesQuantity" />
            <asp:BoundField DataField="ShipmentDate" HeaderText="ShipmentDate" 
                SortExpression="ShipmentDate" />
            <asp:BoundField DataField="OrderDescription" HeaderText="OrderDescription" 
                SortExpression="OrderDescription" />
            <asp:CheckBoxField DataField="PremiumTeaOrder" HeaderText="PremiumTeaOrder" 
                SortExpression="PremiumTeaOrder" />
            <asp:CheckBoxField DataField="GreenTeaOrder" HeaderText="GreenTeaOrder" 
                SortExpression="GreenTeaOrder" />
            <asp:CheckBoxField DataField="GradeAOrder" HeaderText="GradeAOrder" 
                SortExpression="GradeAOrder" />
            <asp:CheckBoxField DataField="GradeBOrder" HeaderText="GradeBOrder" 
                SortExpression="GradeBOrder" />
            <asp:CheckBoxField DataField="GradeCOrder" HeaderText="GradeCOrder" 
                SortExpression="GradeCOrder" />
            <asp:CheckBoxField DataField="TeaSpiceOrder" HeaderText="TeaSpiceOrder" 
                SortExpression="TeaSpiceOrder" />
            <asp:BoundField DataField="OrderPlacedDate" HeaderText="OrderPlacedDate" 
                SortExpression="OrderPlacedDate" />
            <asp:BoundField DataField="OrdererEmail" HeaderText="OrdererEmail" 
                SortExpression="OrdererEmail" />
            <asp:CheckBoxField DataField="Dispatched" HeaderText="Dispatched" 
                SortExpression="Dispatched" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />

        <pagersettings mode="Numeric" Position="Top" pagebuttoncount="10"/>

        <pagerstyle backcolor="#CCFFCC" HorizontalAlign = "Left" CssClass = "GridPager" />
        
    </asp:GridView>

    <asp:Button ID="btnDelete" runat="server" Text="delete" style="color:Red;width:55px;"
         onclick="btnDelete_Click"  OnClientClick="return confirm('Are you sure you want to delete record(s)?');"/>
         <asp:Label ID="lblMessage" runat="server" Font-Bold="true"/>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:smtConnectionString %>" 
        DeleteCommand="DELETE FROM [orderForm] WHERE [orderId] = @orderId" 
        InsertCommand="INSERT INTO [orderForm] ([OrdererName], [OrdererLastName], [OrdererMobileNo], [OrdererAddress], [OrderPurpose], [PremiumTeaQuantity], [GreenTeaQuantity], [GradeATeaQuantity], [GradeBTeaQuantity], [GradeCTeaQuantity], [TeaSpicesQuantity], [ShipmentDate], [OrderDescription], [PremiumTeaOrder], [GreenTeaOrder], [GradeAOrder], [GradeBOrder], [GradeCOrder], [TeaSpiceOrder], [OrderPlacedDate], [OrdererEmail], [Dispatched]) VALUES (@OrdererName, @OrdererLastName, @OrdererMobileNo, @OrdererAddress, @OrderPurpose, @PremiumTeaQuantity, @GreenTeaQuantity, @GradeATeaQuantity, @GradeBTeaQuantity, @GradeCTeaQuantity, @TeaSpicesQuantity, @ShipmentDate, @OrderDescription, @PremiumTeaOrder, @GreenTeaOrder, @GradeAOrder, @GradeBOrder, @GradeCOrder, @TeaSpiceOrder, @OrderPlacedDate, @OrdererEmail, @Dispatched)" 
        SelectCommand="SELECT * FROM [orderForm] where (PremiumTeaOrder = 0 and GreenTeaOrder = 0 and GradeAOrder = 0 and GradeBOrder = 0 and GradeCOrder = 0 and TeaSpiceOrder = 0)" 
        UpdateCommand="UPDATE [orderForm] SET [OrdererName] = @OrdererName, [OrdererLastName] = @OrdererLastName, [OrdererMobileNo] = @OrdererMobileNo, [OrdererAddress] = @OrdererAddress, [OrderPurpose] = @OrderPurpose, [PremiumTeaQuantity] = @PremiumTeaQuantity, [GreenTeaQuantity] = @GreenTeaQuantity, [GradeATeaQuantity] = @GradeATeaQuantity, [GradeBTeaQuantity] = @GradeBTeaQuantity, [GradeCTeaQuantity] = @GradeCTeaQuantity, [TeaSpicesQuantity] = @TeaSpicesQuantity, [ShipmentDate] = @ShipmentDate, [OrderDescription] = @OrderDescription, [PremiumTeaOrder] = @PremiumTeaOrder, [GreenTeaOrder] = @GreenTeaOrder, [GradeAOrder] = @GradeAOrder, [GradeBOrder] = @GradeBOrder, [GradeCOrder] = @GradeCOrder, [TeaSpiceOrder] = @TeaSpiceOrder, [OrderPlacedDate] = @OrderPlacedDate, [OrdererEmail] = @OrdererEmail, [Dispatched] = @Dispatched WHERE [orderId] = @orderId">
        <DeleteParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrdererName" Type="String" />
            <asp:Parameter Name="OrdererLastName" Type="String" />
            <asp:Parameter Name="OrdererMobileNo" Type="String" />
            <asp:Parameter Name="OrdererAddress" Type="String" />
            <asp:Parameter Name="OrderPurpose" Type="String" />
            <asp:Parameter Name="PremiumTeaQuantity" Type="String" />
            <asp:Parameter Name="GreenTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeATeaQuantity" Type="String" />
            <asp:Parameter Name="GradeBTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeCTeaQuantity" Type="String" />
            <asp:Parameter Name="TeaSpicesQuantity" Type="String" />
            <asp:Parameter Name="ShipmentDate" Type="String" />
            <asp:Parameter Name="OrderDescription" Type="String" />
            <asp:Parameter Name="PremiumTeaOrder" Type="Boolean" />
            <asp:Parameter Name="GreenTeaOrder" Type="Boolean" />
            <asp:Parameter Name="GradeAOrder" Type="Boolean" />
            <asp:Parameter Name="GradeBOrder" Type="Boolean" />
            <asp:Parameter Name="GradeCOrder" Type="Boolean" />
            <asp:Parameter Name="TeaSpiceOrder" Type="Boolean" />
            <asp:Parameter Name="OrderPlacedDate" Type="String" />
            <asp:Parameter Name="OrdererEmail" Type="String" />
            <asp:Parameter Name="Dispatched" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrdererName" Type="String" />
            <asp:Parameter Name="OrdererLastName" Type="String" />
            <asp:Parameter Name="OrdererMobileNo" Type="String" />
            <asp:Parameter Name="OrdererAddress" Type="String" />
            <asp:Parameter Name="OrderPurpose" Type="String" />
            <asp:Parameter Name="PremiumTeaQuantity" Type="String" />
            <asp:Parameter Name="GreenTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeATeaQuantity" Type="String" />
            <asp:Parameter Name="GradeBTeaQuantity" Type="String" />
            <asp:Parameter Name="GradeCTeaQuantity" Type="String" />
            <asp:Parameter Name="TeaSpicesQuantity" Type="String" />
            <asp:Parameter Name="ShipmentDate" Type="String" />
            <asp:Parameter Name="OrderDescription" Type="String" />
            <asp:Parameter Name="PremiumTeaOrder" Type="Boolean" />
            <asp:Parameter Name="GreenTeaOrder" Type="Boolean" />
            <asp:Parameter Name="GradeAOrder" Type="Boolean" />
            <asp:Parameter Name="GradeBOrder" Type="Boolean" />
            <asp:Parameter Name="GradeCOrder" Type="Boolean" />
            <asp:Parameter Name="TeaSpiceOrder" Type="Boolean" />
            <asp:Parameter Name="OrderPlacedDate" Type="String" />
            <asp:Parameter Name="OrdererEmail" Type="String" />
            <asp:Parameter Name="Dispatched" Type="Boolean" />
            <asp:Parameter Name="orderId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
