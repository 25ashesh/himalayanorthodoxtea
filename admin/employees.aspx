<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="himalayanorthodoxtea.admin.employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script language="javascript" type="text/javascript">

            function HideLabel() {
                document.getElementById('<%=lblSubmitReport8.ClientID %>').style.display = "none";
            }
            setTimeout("HideLabel();", 10000);
      </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br/>
    <asp:Label ID="lblSubmitReport8" style="font-size:x-large;" runat="server"></asp:Label><br/><br/>

         <div style="color: Green; font-weight: bold; font-size:x-large;">            
        <br />            
        <i>Page                
        <%=GridView1.PageIndex + 1%>of<%=GridView1.PageCount%></i></div>
        <br/>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
    CellPadding="10" DataKeyNames="AdminId" DataSourceID="SqlDataSource1" 
    ShowFooter="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="AdminId" InsertVisible="False" 
                SortExpression="AdminId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("AdminId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("AdminId") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ID="lblInsert" OnClick="lbInsert_Click" runat="server">Insert New!</asp:LinkButton>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                </EditItemTemplate>
                
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="InsertName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LastName" SortExpression="LastName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="InsertLastName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Department" SortExpression="Department">
                <%--
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Department") %>'></asp:TextBox>
                --%>
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataValueField='<%# Bind("Department") %>'>
                                <asp:ListItem>Select Department</asp:ListItem>
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>Marketing</asp:ListItem>
                                <asp:ListItem>Supply</asp:ListItem>
                                <asp:ListItem>Administrative</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:DropDownList ID="ddlInsertDepartment" runat="server">
                                    <asp:ListItem>Select Department</asp:ListItem>
                                    <asp:ListItem>IT</asp:ListItem>
                                    <asp:ListItem>Marketing</asp:ListItem>
                                    <asp:ListItem>Supply</asp:ListItem>
                                    <asp:ListItem>Administrative</asp:ListItem>
                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="InsertMobile" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="InsertUserName" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password" SortExpression="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="InsertPassword" runat="server"></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
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
    DeleteCommand="DELETE FROM [smtAdmin] WHERE [AdminId] = @AdminId" 
    InsertCommand="INSERT INTO [smtAdmin] ([Name], [LastName], [Department], [MobileNo], [UserName], [Password]) VALUES (@Name, @LastName, @Department, @MobileNo, @UserName, @Password)" 
    SelectCommand="SELECT * FROM [smtAdmin] ORDER BY [Department]" 
    UpdateCommand="UPDATE [smtAdmin] SET [Name] = @Name, [LastName] = @LastName, [Department] = @Department, [MobileNo] = @MobileNo, [UserName] = @UserName, [Password] = @Password WHERE [AdminId] = @AdminId">
        <DeleteParameters>
            <asp:Parameter Name="AdminId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="AdminId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
