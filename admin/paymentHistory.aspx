<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="paymentHistory.aspx.cs" Inherits="himalayanorthodoxtea.admin.paymentHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
           .maroon
           {
               background:#ccffcc;
               color:Blue;
               }
        .style1
        {
            width: 27px;
        }
    </style>

    <script type="text/javascript">
        $(function () {
            $("input[id*=admindatepicker]").datepicker({
                changeMonth: true,
                altFormat: "DD, d MM, yy"
            });
        });
    </script>
     <script language="javascript" type="text/javascript">

           function HideLabel() {
               document.getElementById('<%=lblentryreport.ClientID %>').style.display = "none";
              }
           setTimeout("HideLabel();", 10000);
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
     <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="8" 
        DataKeyNames="paymentId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="paymentId" HeaderText="paymentId" 
                InsertVisible="False" ReadOnly="True" SortExpression="paymentId" />
            <asp:BoundField DataField="orderId" HeaderText="orderId" 
                SortExpression="orderId" />
            <asp:BoundField DataField="PaymentRs" HeaderText="PaymentRs" 
                SortExpression="PaymentRs" />
            <asp:BoundField DataField="PaymentReceivedby" 
                HeaderText="PaymentReceivedby" SortExpression="PaymentReceivedby" />
            <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" 
                SortExpression="PaymentDate" />
            <asp:CheckBoxField DataField="EnteredinBook" HeaderText="EnteredinBook" 
                SortExpression="EnteredinBook" />
            <asp:BoundField DataField="EntryMadeDate" HeaderText="EntryMadeDate" 
                ReadOnly="True" SortExpression="EntryMadeDate" />
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
        DeleteCommand="DELETE FROM [paymentHistory] WHERE [paymentId] = @paymentId" 
        InsertCommand="INSERT INTO [paymentHistory] ([orderId], [PaymentRs], [PaymentReceivedby], [PaymentDate], [EnteredinBook], [EntryMadeDate]) VALUES (@orderId, @PaymentRs, @PaymentReceivedby, @PaymentDate, @EnteredinBook, @EntryMadeDate)" 
       SelectCommand="SELECT * FROM [paymentHistory] ORDER BY [EntryMadeDate]"
         
        UpdateCommand="UPDATE [paymentHistory] SET [orderId] = @orderId, [PaymentRs] = @PaymentRs, [PaymentReceivedby] = @PaymentReceivedby, [PaymentDate] = @PaymentDate, [EnteredinBook] = @EnteredinBook WHERE [paymentId] = @paymentId">
        <DeleteParameters>
            <asp:Parameter Name="paymentId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
            <asp:Parameter Name="PaymentRs" Type="Double" />
            <asp:Parameter Name="PaymentReceivedby" Type="String" />
            <asp:Parameter Name="PaymentDate" Type="String" />
            <asp:Parameter Name="EnteredinBook" Type="Boolean" />
            <asp:Parameter Name="EntryMadeDate" DbType="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="orderId" Type="Int32" />
            <asp:Parameter Name="PaymentRs" Type="Double" />
            <asp:Parameter Name="PaymentReceivedby" Type="String" />
            <asp:Parameter Name="PaymentDate" Type="String" />
            <asp:Parameter Name="EnteredinBook" Type="Boolean" />
            <asp:Parameter Name="EntryMadeDate" DbType="Date" />
            <asp:Parameter Name="paymentId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
<br/>
    <asp:Label ID="lblentryreport" style="font-size:x-large;" runat="server"></asp:Label>
<br/><br/>
<div style="border:1px solid #ccffcc;width:750px;">
<table>
    <tr>
        <td>
            <asp:Label CssClass="maroon" ID="lblorderId" runat="server" Text="orderId"></asp:Label>
         </td>
          <td>
            <asp:Label CssClass="maroon" ID="lblpayment" runat="server" Text="PaymentRs"></asp:Label>
          </td>
          <td>
            <asp:Label CssClass="maroon" ID="lblpaymentreceived" runat="server" Text="PaymentReceivedby"></asp:Label>
          </td>
          <td>
            <asp:Label CssClass="maroon" ID="lblpaymentdate" runat="server" Text="PaymentDate"></asp:Label>
          </td>
          <td>
            <asp:Label CssClass="maroon" ID="lblenterbook" runat="server" Text="EnteredinBook"></asp:Label>
          </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="txtorderId" title="It must be a number!" Height="20px" Width="80px"  type="number" required="required" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="txtpayment" title="It must be a number!" Height="20px"  type="number" required="required" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="txtReceiver" Height="20px" required="required" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="admindatepicker" Height="20px" required="required" runat="server"></asp:TextBox>
        </td>        
        <td>
            <asp:CheckBox ID="chkenterbook" Height="20px" runat="server" />
        </td>
    </tr>
    
</table>
<br/>
            <asp:Button ID="PaymentButton" style="height:31px; width:160px; float:right;" runat="server" 
                Text="Enter the records!" onclick="PaymentButton_Click" />

</div>
</asp:Content>
