<%@ Page Title="" Language="C#" MasterPageFile="~/small.Master" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="himalayanorthodoxtea.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript">

        function HideLabel() {
            document.getElementById('<%=lblSubmitReport.ClientID %>').style.display = "none";
        }
        setTimeout("HideLabel();", 10000);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="logo" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <asp:Label class="lblorderreport" ID="lblSubmitReport" runat="server"> </asp:Label>
    <!--==============================================================================-->
    <h10><asp:Label ID="lblOrderer" runat="server" Text="Please enter your contact information."></asp:Label></h10>
    <br />
    <hr style="width: 450px;" />
    <br />
    <form id="Form1" runat="server" method="post">
    <fieldset>
        <table border="0px">
            <tr>
                <td>
                    <asp:Label ID="Label10" class="Label" runat="server" Text="First Name"></asp:Label>
                    <asp:TextBox ID="FNameTextBox1" required="required" runat="server" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="Label11" class="Label" runat="server" Text="Last Name"></asp:Label>
                    <asp:TextBox ID="LNameTextBox2" required="required" runat="server" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="lblEmail" class="Label" runat="server" Text="Email"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtemail" type="email" required="required" runat="server" Height="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblAddress" class="Label" runat="server" Text="Address"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtaddress" required="required" title="Please enter shipment address."
                        runat="server" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="lblMobile" class="Label" runat="server" Text="Contact no."></asp:Label>
                    <asp:TextBox ID="txtmobileno" required="required" runat="server" Height="25px"></asp:TextBox>
                    &nbsp;&nbsp;<br />
                    <br />
                    <asp:Label ID="lblPurpose" class="Label" runat="server" Text="Purpose"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="OrderPurposeDDL" Height="25px" Width="145px" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>home</asp:ListItem>
                        <asp:ListItem>office</asp:ListItem>
                        <asp:ListItem>shop</asp:ListItem>
                        <asp:ListItem>gift</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        <br />
        <hr style="width: 630px;" />
        <br />
        <h10><asp:Label ID="lblSelectProducts" runat="server" Text="Select Products and Quantity."></asp:Label></h10>
        <br />
        <hr style="width: 630px;" />
        <table border="0px" cellspacing="10px" cellpadding="25px" style="height: 100px; width: 700px;">
            <tr>
                <td>
                    <img src="images/gradedtea/premium.jpg" class="imgbdr" />
                </td>
                <td>
                    <img src="images/gradedtea/greentea.jpg" class="imgbdr" />
                </td>
                <td>
                    <img src="images/gradedtea/gradea.jpg" class="imgbdr" />
                </td>
                <td>
                    <img src="images/gradedtea/gradeb.jpg" class="imgbdr" />
                </td>
                <td>
                    <img src="images/gradedtea/gradec.jpg" class="imgbdr" />
                </td>
                <td>
                    <img src="images/gradedtea/teaspice.jpg" class="imgbdr" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSupreme" Text="Premium    " class="Label" runat="server" /><asp:CheckBox
                        ID="PremiumCheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblOrganic" Text="Organic    " class="Label" runat="server" /><asp:CheckBox
                        ID="OrganicCheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblGradeA" Text="Grade A    " class="Label" runat="server" /><asp:CheckBox
                        ID="GradeACheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblGradeB" Text="Grade B    " class="Label" runat="server" /><asp:CheckBox
                        ID="GradeBCheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblGradeC" Text="Grade C    " class="Label" runat="server" /><asp:CheckBox
                        ID="GradeCCheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="lblTeaSpices" Text="Tea Spices    " class="Label" runat="server" /><asp:CheckBox
                        ID="TeaSpicesCheckBox" OnCheckedChanged="PriceCalculate" AutoPostBack="true" runat="server" />&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="PremiumDropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>1kg</asp:ListItem>
                        <asp:ListItem>2kg</asp:ListItem>
                        <asp:ListItem>3kg</asp:ListItem>
                        <asp:ListItem>4kg</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label4" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="OrganicDropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>1kg</asp:ListItem>
                        <asp:ListItem>2kg</asp:ListItem>
                        <asp:ListItem>3kg</asp:ListItem>
                        <asp:ListItem>4kg</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label5" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="GradeADropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>1kg</asp:ListItem>
                        <asp:ListItem>2kg</asp:ListItem>
                        <asp:ListItem>3kg</asp:ListItem>
                        <asp:ListItem>4kg</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label6" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="GradeBDropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>1kg</asp:ListItem>
                        <asp:ListItem>2kg</asp:ListItem>
                        <asp:ListItem>3kg</asp:ListItem>
                        <asp:ListItem>4kg</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label7" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="GradeCDropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>1kg</asp:ListItem>
                        <asp:ListItem>2kg</asp:ListItem>
                        <asp:ListItem>3kg</asp:ListItem>
                        <asp:ListItem>4kg</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td>
                    <asp:Label ID="Label13" class="Labell" Text="Qty" runat="server" />
                    <asp:DropDownList ID="TeaSpicesDropDownList" OnSelectedIndexChanged="PriceCalculate"
                                AutoPostBack="true" runat="server">
                        <%--<asp:ListItem>-</asp:ListItem>--%>
                        <asp:ListItem>100gms</asp:ListItem>
                        <asp:ListItem>200gms</asp:ListItem>
                        <asp:ListItem>300gms</asp:ListItem>
                        <asp:ListItem>400gms</asp:ListItem>
                        <asp:ListItem>500gms</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                </td>
                <td><asp:Label class="lbltotalprice"
                    ID="lblTotalPrice" runat="server" /></td>
            </tr>
        </table>
        <br />
        <hr style="width: 760px;" />
        <br />
        <table>
            <tr>
                <td>
                    <h10><asp:Label ID="lblDesc" runat="server" Text="Specify order description."></asp:Label></h10>
                    <br />
                    <asp:TextBox ID="OrderDescription" title="Provide some order specification." runat="server"
                        Style="height: 35px; width: 300px;"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <h10><asp:Label ID="lblDate" runat="server" Text="Shipment Date"></asp:Label></h10>
                    <br />
                    <%--<input type="text" required="required" title="When do you want to get the product delivered?"  style="height:25px;" id="datepicker"/>&nbsp;<input type="text" id="alternate" style="height:25px;width:275px;"/>
                    --%>
                    <asp:TextBox ID="textdatepicker" Style="height: 25px;" title="When do you want to get the product delivered?"
                        runat="server" />&nbsp;<input type="text" id="alternate" style="height: 25px; width: 275px;" />
                    <asp:TextBox ID="copyDate" runat="server" Visible="false" />
                </td>
            </tr>
        </table>
        <div style="float: right; color: Red;">
            [<h10>Order via <a href="orderForm/smallTea_orderForm.pdf" target="_blank" title="smalltea.nepal @gmail.com"><i>email </i></a>|<a href="#" title="+977-9841623839 (Mikesh Subedi)"><i> phone</i></a></h10>]
        </div>
        <br />

        <asp:Button ID="orderbutton" runat="server" Text="Submit Order" Style="height: 31px;
            width: 160px;" OnClick="orderbutton_click" OnClientClick="return confirm('Are you sure you want to place this order?');"
            ToolTip="Click to submit this order form." />
        <asp:Label ID="lblErrorReport" runat="server" />
    </fieldset>
    </form>
    <!--================background:#cccccc;  ==============================================================-->
</asp:Content>
