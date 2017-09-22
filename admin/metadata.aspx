<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="metadata.aspx.cs" Inherits="himalayanorthodoxtea.admin.metadata" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>

     <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="orderId" DataSourceID="SqlDataSource1" AllowPaging="True" 
            AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
            BorderWidth="1px" CellPadding="7" onrowdatabound="GridView1_RowDataBound">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
                <asp:BoundField DataField="orderId" HeaderText="orderId" InsertVisible="False" 
                    ReadOnly="True" SortExpression="orderId" />

                <asp:CheckBoxField DataField="Dispatched" HeaderText="Dispatched" 
                    SortExpression="Dispatched" />

                <asp:BoundField DataField="OrdererName" HeaderText="OrdererName" 
                    SortExpression="OrdererName" />
                <asp:BoundField DataField="OrdererLastName" HeaderText="OrdererLastName" 
                    SortExpression="OrdererLastName" />
                <asp:BoundField DataField="OrderPurpose" HeaderText="OrderPurpose" 
                    SortExpression="OrderPurpose" />

                <asp:CheckBoxField DataField="PremiumTeaOrder" HeaderText="PremiumTeaOrder" 
                    SortExpression="PremiumTeaOrder" />

                <asp:BoundField DataField="PremiumTeaQuantity" HeaderText="PremiumTeaQty" 
                    SortExpression="PremiumTeaQuantity" />

                <asp:CheckBoxField DataField="GreenTeaOrder" HeaderText="GreenTeaOrder" 
                    SortExpression="GreenTeaOrder" />

                <asp:BoundField DataField="GreenTeaQuantity" HeaderText="GreenTeaQty" 
                    SortExpression="GreenTeaQuantity" />

                <asp:CheckBoxField DataField="GradeAOrder" HeaderText="GradeAOrder" 
                    SortExpression="GradeAOrder" />

                <asp:BoundField DataField="GradeATeaQuantity" HeaderText="GradeATeaQty" 
                    SortExpression="GradeATeaQuantity" />

                <asp:CheckBoxField DataField="GradeBOrder" HeaderText="GradeBOrder" 
                    SortExpression="GradeBOrder" />

                <asp:BoundField DataField="GradeBTeaQuantity" HeaderText="GradeBTeaQty" 
                    SortExpression="GradeBTeaQuantity" />

                <asp:CheckBoxField DataField="GradeCOrder" HeaderText="GradeCOrder" 
                     SortExpression="GradeCOrder" />

                <asp:BoundField DataField="GradeCTeaQuantity" HeaderText="GradeCTeaQty" 
                    SortExpression="GradeCTeaQuantity" />

                <asp:CheckBoxField DataField="TeaSpiceOrder" HeaderText="TeaSpiceOrder" 
                                    SortExpression="TeaSpiceOrder" />

                <asp:BoundField DataField="TeaSpicesQuantity" HeaderText="TeaSpicesQty" 
                    SortExpression="TeaSpicesQuantity" />

                <asp:BoundField DataField="OrderDescription" HeaderText="OrderDescription" 
                    SortExpression="OrderDescription" />

                <asp:BoundField DataField="OrderPlacedDate" HeaderText="OrderPlacedDate" 
                    SortExpression="OrderPlacedDate"></asp:BoundField>

                <asp:BoundField DataField="ShipmentDate" HeaderText="ShipmentDate" 
                    SortExpression="ShipmentDate" />             
               
                <asp:BoundField DataField="OrdererEmail" HeaderText="OrdererEmail" 
                    SortExpression="OrdererEmail"></asp:BoundField>

                <asp:BoundField DataField="OrdererMobileNo" HeaderText="OrdererMobileNo" 
                    SortExpression="OrdererMobileNo" />
                <asp:BoundField DataField="OrdererAddress" HeaderText="OrdererAddress" 
                    SortExpression="OrdererAddress" />

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
            SelectCommand="SELECT * FROM [orderForm]" 
             DeleteCommand="DELETE FROM [orderForm] WHERE [orderId] = @orderId">
            <DeleteParameters>
                <asp:Parameter Name="orderId" Type="Int32" />
            </DeleteParameters>

         </asp:SqlDataSource>
    
    
    </div>
    
</asp:Content>
