<%@ Page Title="" Language="C#" MasterPageFile="~/small.Master" AutoEventWireup="true"
    CodeBehind="smalltea.aspx.cs" Inherits="himalayanorthodoxtea.smalltea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript" type="text/javascript">

        function HideLabel() {
            document.getElementById('<%=lblSubmitReport.ClientID %>').style.display = "none";
        }
        setTimeout("HideLabel();", 10000);
    </script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="slider" runat="server">
    <div id="bannerscollection_zoominout_opportune">
        <div class="myloader">
        </div>
        <!-- CONTENT -->
        <ul class="bannerscollection_zoominout_list">
            <li data-horizontalposition="center" data-verticalposition="top" data-initialzoom="1"
                data-finalzoom="0.73" data-bottom-thumb="images/SideBarPlus/300x600/thumbs/01_300x600.jpg"
                data-text-id="#bannerscollection_zoominout_photoText1">
                <img src="images/SideBarPlus/300x600/01_300x600.jpg" alt="" width="420" height="840" /></li>
            <!-- height="840"-->
            <li data-horizontalposition="right" data-verticalposition="top" data-initialzoom="1"
                data-finalzoom="0.73" data-bottom-thumb="images/SideBarPlus/300x600/thumbs/02_300x600.jpg"
                data-text-id="#bannerscollection_zoominout_photoText2">
                <img src="images/SideBarPlus/300x600/02_300x600.jpg" alt="" width="420" height="840" /></li>
            <li data-horizontalposition="center" data-verticalposition="top" data-initialzoom="1"
                data-finalzoom="0.715" data-bottom-thumb="images/SideBarPlus/300x600/thumbs/03_300x600.jpg"
                data-text-id="#bannerscollection_zoominout_photoText3">
                <img src="images/SideBarPlus/300x600/03_300x600.jpg" alt="" width="420" height="840" /></li>
        </ul>
        <!-- TEXTS -->
        <div id="bannerscollection_zoominout_photoText1" class="bannerscollection_zoominout_texts">
            <div class="bannerscollection_zoominout_text_line textElement11_300x600" data-initial-left="25"
                data-initial-top="10" data-final-left="25" data-final-top="30" data-duration="0.5"
                data-fade-start="0" data-delay="0">
                premium quality</div>
            <div class="bannerscollection_zoominout_text_line textElement12_300x600" data-initial-left="250"
                data-initial-top="70" data-final-left="50" data-final-top="70" data-duration="0.5"
                data-fade-start="0" data-delay="0.3">
                <br />
                <br />
                <span class="highlight1b">orthodox tea</span></div>
            <div class="bannerscollection_zoominout_text_line textElement51_opportune" data-initial-left="105"
                data-initial-top="600" data-final-left="75" data-final-top="475" data-duration="0.5"
                data-fade-start="0.5" data-delay="0">
                Best quality tea<br />
                that you have longed for. Order it now!</div>
        </div>
        <div id="bannerscollection_zoominout_photoText2" class="bannerscollection_zoominout_texts">
            <div class="bannerscollection_zoominout_text_line textElement21_300x600" data-initial-left="25"
                data-initial-top="300" data-final-left="25" data-final-top="30" data-duration="0.5"
                data-fade-start="0" data-delay="0">
                Begin your day with</div>
            <div class="bannerscollection_zoominout_text_line textElement22_300x600" data-initial-left="25"
                data-initial-top="384" data-final-left="25" data-final-top="60" data-duration="0.5"
                data-fade-start="0" data-delay="0.3">
                FRESH<br />
                HEALTHY<br />
                and SPICY TEA.</div>
        </div>
        <div id="bannerscollection_zoominout_photoText3" class="bannerscollection_zoominout_texts">
            <div class="bannerscollection_zoominout_text_line textElement11_300x600" data-initial-left="25"
                data-initial-top="10" data-final-left="25" data-final-top="30" data-duration="0.5"
                data-fade-start="0" data-delay="0">
                HEALTHY
                <br />
                organic</div>
            <div class="bannerscollection_zoominout_text_line textElement12_300x600" data-initial-left="250"
                data-initial-top="70" data-final-left="50" data-final-top="70" data-duration="0.5"
                data-fade-start="0" data-delay="0.3">
                <br />
                <br />
                <span class="highlight2b">GREEN TEA</span></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="logo" runat="server">
    <img alt="himalayan orthodox tea logo" src="img/mainlogo.png" height="43px" />
    <a href="smtadminlogin" target="_blank">
        <img src="img/smalltea2.png" alt="small tea logo" style="float: right; height: 43px;
            width: 110px;" />
    </a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">
                <img alt="home" src="images/pngs/home.png" />&nbsp;&nbsp;&nbsp;SmallTea</a></li>
            <li><a href="#tabs-2">
                <img alt="products" src="images/pngs/leaf.png" />&nbsp;&nbsp;&nbsp;Products</a></li>
            <li><a href="#tabs-3">
                <img alt="orders" src="images/pngs/order-icon.png" />&nbsp;&nbsp;&nbsp;Order</a></li>
            <li><a href="#tabs-4">
                <img alt="forum" src="images/pngs/forum.png" />&nbsp;&nbsp;&nbsp;Forum</a></li>
            <li><a href="#tabs-5">
                <img alt="tea preparation" src="images/pngs/kettle.png" />&nbsp;&nbsp;&nbsp;Demo</a></li>
        </ul>
        <div id="tabs-1" class="styletab">
            <h1 style="font-size: larger;">
                Healthy, hygenic and fresh Tea.</h1>
            <br />
            <img style="float: right;" src="images/orthodox.png" alt="himalayan orthodox tea sample"
                width="400px;" />
            <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 606px;
                height: 150px;">
                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block;
                        background-color: #000; top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                        top: 0px; left: 0px; width: 100%; height: 100%;">
                    </div>
                </div>
                <!-- Slides Container -->
                <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 606px;
                    height: 150px; overflow: hidden;">
                    <div>
                        <img u="image" src="tea/img1.jpg" alt="first slider image" /></div>
                    <div>
                        <img u="image" src="tea/img2.jpg" alt="second slider image" /></div>
                    <div>
                        <img u="image" src="tea/img3.jpg" alt="third slider image" /></div>
                    <div>
                        <img u="image" src="tea/img4.jpg" alt="fourth slider image" /></div>
                    <div>
                        <img u="image" src="tea/img5.jpg" alt="fifth slider image" /></div>
                    <div>
                        <img u="image" src="tea/img6.jpg" alt="sixth slider image" /></div>
                    <div>
                        <img u="image" src="tea/img7.jpg" alt="seventh slider image" /></div>
                </div>
                <div u="navigator" class="jssorn03" style="position: absolute; bottom: 4px; right: 6px;">
                    <!-- navigator item prototype -->
                    <div u="prototype" style="position: absolute; width: 21px; height: 21px; text-align: center;
                        line-height: 21px; color: white; font-size: 12px;">
                        <numbertemplate></numbertemplate>
                    </div>
                </div>
                <span u="arrowleft" class="jssord03l" style="width: 55px; height: 55px; top: 123px;
                    left: 8px;"></span>
                <!-- Arrow Right -->
                <span u="arrowright" class="jssord03r" style="width: 55px; height: 55px; top: 123px;
                    right: 8px"></span>
            </div>
            <br />
            <br />
            <div class="leeft">
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h1>
                            General benefits of orthodox tea:</h1>
                        <br />
                        <ol>
                            <li>Keeps you fresh and active.</li>
                            <li>Strengthens your immunity.</li>
                            <li>Increases your appetite.</li>
                            <li>Possesses anti aging mechanism.</li>
                            <li>Good for your skin.</li></ol>
                    </div>
                </div>
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h1>
                            Health benefits of orthodox tea:</h1>
                        <br />
                        <ol>
                            <li>Possesses anti cancer elements. </li>
                            <li>Cure for ruhematoid artheritis.</li>
                            <li>Solves problems such gastric.</li>
                            <li>Reduces the chances of heart diseases.</li>
                            <li>It contains much lesser nicotine.</li></ol>
                    </div>
                </div>
            </div>
            <div id="infobox">
                <p style="font-family: Latha; font-size: 13px;">
                    We are a small company of tea farmers from Illam.
                    <br />
                    Besides tourism Illam is known for producing best quality tea in Nepal.
                    <br />
                    We bring tea products directly from Illam and supply to our customers.
                    <br />
                    Five star hotels & restaurants are some of our key customers.
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;See the<a href="gallery.aspx" class="illamgallery" target="_blank">
                        tea gardens </a>where tea leaves are grown.
                </p>
            </div>
            <br />
            <asp:Label class="lblorderreport" ID="lblSubmitReport" runat="server"> </asp:Label>
        </div>
        <div id="tabs-2" class="styletab">
            <br />
            <div class="floater">
                <div id="right">
                    <div class="boxtop">
                    </div>
                    <div class="box">
                        <h10 style="font-size: x-large;">&nbsp;&nbsp;&nbsp;Pricing List</h10>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<sub>(in Rupees)</sub><br />
                        <br />
                        <table>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/premiumtea.png"
                                        alt="premium tea image" /><br />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/greentea.png"
                                        alt="green tea image" /><br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5000 per kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3500 per kg
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/gradea.png"
                                        alt="Grade A Tea image" /><br />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/gradeb.png"
                                        alt="Grade B Tea image" /><br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1000 per kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;750 per kg
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/gradec.png"
                                        alt="Grade C Tea image" /><br />
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img class="imgsize" src="images/imager/teaspices.png"
                                        alt="Tea spices image" /><br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 per kg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;500 per 100gm
                                </td>
                            </tr>
                        </table>
                        <br />
                        <p>
                            Exclusive of VAT(13%)</p>
                    </div>
                </div>
                <%-- <img src="images/pricing.png" style="float:right;height:300px;width:400px"/>--%>
            </div>
            <h10 style="font-size: larger;">We offer following categories of Tea.</h10>
            <br />
            <br />
            <div id="accordion" style="height: 250px; width: 500px; font-family: Calisto MT;
                font-size: 14px; word-spacing: 1px; color: #777744;">
                <h3>
                    Premium Quality</h3>
                <div>
                    <p>
                        This is the best quality tea produced. Fine tea leaves are processed to prepare
                        this tea. Strong aroma of the tea and superb colorization are its key features.</p>
                </div>
                <h3>
                    Green Tea</h3>
                <div>
                    <p>
                        This is used for medicinal purposes. This tea is supposed to solve various health
                        related problems. Apart from that it is also a health immunizer.</p>
                </div>
                <h3>
                    Grade A</h3>
                <div>
                    <p>
                        Premium Quality tea is further graded down as bi product but, it is still the most
                        popular and preferred tea. You can use it to gift others, drink at home or at office.
                        It is best used with tea spices.</p>
                </div>
                <h3>
                    Grade B</h3>
                <div>
                    <p>
                        Grade B quality does not mean that it is of average quality. The difference is with
                        the colorization and flavor. This is preferred at office, restaurants, hotels etc.</p>
                </div>
                <h3>
                    Grade C</h3>
                <div>
                    <p>
                        Grade C quality does not mean that it is of inferior quality. However, comparing
                        to Premium quality, significant difference can be felt. This is used where tea is
                        consumed in large quantity like restaurants.
                    </p>
                </div>
                <h3>
                    Tea Spices</h3>
                <div>
                    <p>
                        Tea is best used with some spices. Various traditional herbs are mixed to produce
                        the spices, these spices provides medical benefits. These spices adds strong aroma
                        to makes the tea tastier.</p>
                </div>
            </div>
            <br />
            <br />
            <div class="gboxtop">
            </div>
            <div class="gbox">
                <p>
                    We bring the tea products directly from <a href="gallery" class="illamgallery" target="_blank">
                        Illam</a> (where tea leaves are grown and processed). We assure you to provide
                    best quality tea for the price you pay.</p>
            </div>
        </div>
        <div id="tabs-3" class="styletab">
            <!--==============================================================================-->
            <h10><asp:Label ID="lblOrderer" runat="server" Text="Please enter your contact information."></asp:Label></h10>
            <br />
            <hr style="width: 450px;" />
            <br />
            <form runat="server" method="post">
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
                <hr style="width: 660px;" />
                <br />
                <h10><asp:Label ID="lblSelectProducts" runat="server" Text="Select Products and Quantity."></asp:Label></h10>
                <br />
                <hr style="width: 660px;" />
                <table border="0px" cellspacing="10px" cellpadding="25px" style="height: 100px; width: 700px;">
                    <tr>
                        <td>
                            <img src="images/gradedtea/premium.jpg" class="imgbdr" alt="premium tea image" />
                        </td>
                        <td>
                            <img src="images/gradedtea/greentea.jpg" class="imgbdr" alt="green tea image" />
                        </td>
                        <td>
                            <img src="images/gradedtea/gradea.jpg" class="imgbdr" alt="Grade A tea image" />
                        </td>
                        <td>
                            <img src="images/gradedtea/gradeb.jpg" class="imgbdr" alt="Grade B tea image" />
                        </td>
                        <td>
                            <img src="images/gradedtea/gradec.jpg" class="imgbdr" alt="Grade C tea image" />
                        </td>
                        <td>
                            <img src="images/gradedtea/teaspice.jpg" class="imgbdr" alt="Tea Spices image" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSupreme" Text="Premium Tea    " class="Label" runat="server" /><asp:CheckBox
                                ID="PremiumCheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblOrganic" Text="Green Tea    " class="Label" runat="server" /><asp:CheckBox
                                ID="OrganicCheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblGradeA" Text="Grade A Tea    " class="Label" runat="server" /><asp:CheckBox
                                ID="GradeACheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblGradeB" Text="Grade B Tea    " class="Label" runat="server" /><asp:CheckBox
                                ID="GradeBCheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblGradeC" Text="Grade C Tea    " class="Label" runat="server" /><asp:CheckBox
                                ID="GradeCCheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="lblTeaSpices" Text="Tea Spices    " class="Label" runat="server" /><asp:CheckBox
                                ID="TeaSpicesCheckBox" runat="server" />&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="PremiumDropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>1kg</asp:ListItem>
                                <asp:ListItem>2kg</asp:ListItem>
                                <asp:ListItem>3kg</asp:ListItem>
                                <asp:ListItem>4kg</asp:ListItem>
                                <asp:ListItem>5kg</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label4" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="OrganicDropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>1kg</asp:ListItem>
                                <asp:ListItem>2kg</asp:ListItem>
                                <asp:ListItem>3kg</asp:ListItem>
                                <asp:ListItem>4kg</asp:ListItem>
                                <asp:ListItem>5kg</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label5" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="GradeADropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>1kg</asp:ListItem>
                                <asp:ListItem>2kg</asp:ListItem>
                                <asp:ListItem>3kg</asp:ListItem>
                                <asp:ListItem>4kg</asp:ListItem>
                                <asp:ListItem>5kg</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label6" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="GradeBDropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>1kg</asp:ListItem>
                                <asp:ListItem>2kg</asp:ListItem>
                                <asp:ListItem>3kg</asp:ListItem>
                                <asp:ListItem>4kg</asp:ListItem>
                                <asp:ListItem>5kg</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label7" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="GradeCDropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>1kg</asp:ListItem>
                                <asp:ListItem>2kg</asp:ListItem>
                                <asp:ListItem>3kg</asp:ListItem>
                                <asp:ListItem>4kg</asp:ListItem>
                                <asp:ListItem>5kg</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Label ID="Label13" class="Labell" Text="Qty" runat="server" />
                            <asp:DropDownList ID="TeaSpicesDropDownList" runat="server">
                                <asp:ListItem>-</asp:ListItem>
                                <asp:ListItem>100gms</asp:ListItem>
                                <asp:ListItem>200gms</asp:ListItem>
                                <asp:ListItem>300gms</asp:ListItem>
                                <asp:ListItem>400gms</asp:ListItem>
                                <asp:ListItem>500gms</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                            <%--<asp:Button ID="calculatePrice" Text="totalprice" OnClick="btn_calculatedPrice" runat="server"/>--%><asp:Label
                                ID="lblTotalPrice" runat="server" />
                        </td>
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
                <asp:Button ID="orderbutton" CssClass="ordrbtn" runat="server" Text="Submit Order"
                    Style="height: 31px; width: 160px;" OnClick="orderbutton_click" OnClientClick="return confirm('Are you sure you want to place this order?');"
                    ToolTip="Click to submit this order form." />
                <asp:Label ID="lblErrorReport" runat="server" />
            </fieldset>
            </form>
            <!--================background:#cccccc;  ==============================================================-->
        </div>
        <!-- add comments-->
        <div id="tabs-4" class="styletab_overflow">
            <%--<div id="top"></div>--%>
            <a href="https://www.facebook.com/" target="_blank" style="float: right;">
                <img src="img/facebookLogin.png" /></a>
            <br />
            <h1>
                Please add comments.</h1>
            <br />
            <div class="fb-comments" data-href="http://www.smalltea.com.np" data-width="975"
                data-numposts="5" data-colorscheme="light">
            </div>
            <%--<div id="backtotop"><a href="#top">Back To Top</a></div>--%>
        </div>
        <div id="tabs-5" class="styletab">
            <br />
            <h1>
                Wanna learn how to prepare himalayan orthodox tea?</h1>
            <br />
            <br />
            Here's how you prepare tea. It's very simple.
            <br />
            <br />
            <img src="images/tea_preprn/1.png" class="teapreprn" alt="first step" />&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="images/tea_preprn/2.png" class="teapreprn" alt="second step" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="images/tea_preprn/3.png" class="teapreprn" alt="third step" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img src="images/tea_preprn/4.png" class="teapreprn" alt="fourth step" />
            <div class="leefty">
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h10>Step 1</h10>
                        <br />
                        <br />
                        Boil water in a vessel. Not necessarily same as above, you can boil on electric
                        vessel as well.
                    </div>
                </div>
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h10>Step 2</h10>
                        <br />
                        <br />
                        Keep boiling until water steams (for 2-3 mins).
                    </div>
                </div>
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h10>Step 3</h10>
                        <br />
                        <br />
                        Add little tea with respect to water boiled. Add sugar, spices and additional flavors.
                    </div>
                </div>
                <div class="thirds">
                    <div class="smallboxtop">
                    </div>
                    <div class="smallbox">
                        <h10>Step 4</h10>
                        <br />
                        <br />
                        Get some coloration. Let it boil for some more time, if you prefer strong tea.
                    </div>
                </div>
            </div>
            <div id="infobox2">
                <p style="font-family: Latha; font-size: 13px;">
                    <img src="css/images/arrow.gif" />&nbsp;<a style="color: Red;">Call us for demo!</a><img
                        src="css/images/arrow.gif" /><br />
                    <img src="images/phone.png" />&nbsp;&nbsp;Just give us a call... We'll be there
                    with free samples and show the preparation of himalayan orthodox tea.
                    <br />
                    <a style="color: Green;">Looking for contact?</a> ..... It's right at the bottom!&nbsp;<img
                        src="images/down.png" />
                </p>
            </div>
        </div>
        <br />
        <br />
        <div>
            <span class="reference">
                <p>
                    <a href="https://www.facebook.com/SmallteaNepal" target="_blank">facebook</a> <a
                        href="https://twitter.com/SmallteaNepal" target="_blank">twitter</a>
                </p>
            </span><span class="reference1">
                <p>
                    <a>smalltea(Kathmandu, Nepal) | Mobile:+977-9841043586 | Email: smalltea.nepal@gmail.com</a>
                </p>
            </span>
        </div>
    </div>
</asp:Content>
