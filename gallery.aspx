<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="himalayanorthodoxtea.gallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Description" content="This page shows full screen gallery of tea garden of Illam."/>
<meta name="Keywords" content="smalltea, himalayan orthodox tea, Illam, Kanyam, Visit Illam, Tea Gardens, Full screen gallery, Full screen image gallery jQuery"/>

    <title>smalltea | gallery</title>
    <link rel="Shortcut Icon" href="images/favicon.ico" type="image/x-icon"/>
    <link href="css/bannerscollection_zoominout.css" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>


<%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>--%>

    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
        <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <script src="js/bannerscollection_zoominout.js" type="text/javascript"></script>
    <script src="js/jquery.ui.touch-punch.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.js" type="text/javascript"></script>


        <script type="text/javascript">
            var ua = navigator.userAgent.toLowerCase();
            if (ua.indexOf("msie") != -1 || ua.indexOf("opera") != -1) {
                jQuery('body').css('overflow', 'hidden');
                jQuery('html').css('overflow', 'hidden');
            }

            jQuery(function () {
                jQuery('#bannerscollection_zoominout_opportune').bannerscollection_zoominout({
                    skin: 'opportune',
                    responsive: true,
                    width: 1920,
                    height: 1200,
                    width100Proc: true,
                    height100Proc: true,
                    showNavArrows: true,
                    showBottomNav: true,
                    autoHideBottomNav: true,
                    thumbsWrapperMarginTop: -55,
                    pauseOnMouseOver: false
                });

            });

		
	</script>

    <script type="text/javascript">
        function zipBack() {
            window.scroll(0, 0)
        }
        function init() {
            document.body.onscroll = zipBack
        }
</script>

</head>
<body onload="init()">
         <div id="bannerscollection_zoominout_opportune">
            	<div class="myloader"></div>
                <!-- CONTENT -->
                <ul class="bannerscollection_zoominout_list">
               		<li data-text-id="#bannerscollection_zoominout_photoText1" data-bottom-thumb="images/opportuneFullScreen/thumbs/01_opportune.jpg" data-initialZoom="0.78" data-finalZoom="1" ><img src="images/opportuneFullScreen/01_opportune_full.jpg" alt="" width="2500" height="1570" /></li>
                 
                    <li data-text-id="#bannerscollection_zoominout_photoText2" data-horizontalPosition="right" data-verticalPosition="top" data-bottom-thumb="images/opportuneFullScreen/thumbs/02_opportune.jpg" data-initialZoom="0.78" data-finalZoom="1"><img src="images/opportuneFullScreen/02_opportune_full.jpg" alt="" width="2500" height="1570" /></li>

                    <%--<li data-bottom-thumb="images/opportuneFullScreen/thumbs/03_opportune.jpg" data-horizontalPosition="center" data-verticalPosition="center" data-initialZoom="0.78" data-finalZoom="1"><img src="images/opportuneFullScreen/03_opportune_full.jpg" alt="" width="2500" height="1570"/></li>--%>
                   
                    
                    <%--<li data-text-id="#bannerscollection_zoominout_photoText4" data-bottom-thumb="images/opportuneFullScreen/thumbs/04_opportune.jpg" data-horizontalPosition="left" data-verticalPosition="center" data-initialZoom="0.78" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/04_opportune_full.jpg" alt="" width="2500" height="1570" />
                  </li>--%>
                    
                    <%--<li data-bottom-thumb="images/opportuneFullScreen/thumbs/05_opportune.jpg" data-horizontalPosition="right" data-verticalPosition="center" data-initialZoom="0.78" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/05_opportune_full.jpg" alt="" width="2500" height="1570" />
                  </li>--%>
                    
                    <li data-text-id="#bannerscollection_zoominout_photoText4" data-bottom-thumb="images/opportuneFullScreen/thumbs/06_opportune.jpg" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/06_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>

                    <li data-text-id="#bannerscollection_zoominout_photoText6" data-bottom-thumb="images/opportuneFullScreen/thumbs/07_opportune.png" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/07_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>

                    <%--<li data-text-id="#bannerscollection_zoominout_photoText6" data-bottom-thumb="images/opportuneFullScreen/thumbs/08_opportune.png" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/08_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>

                    <li data-text-id="#bannerscollection_zoominout_photoText6" data-bottom-thumb="images/opportuneFullScreen/thumbs/09_opportune.png" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/09_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>

                    <li data-text-id="#bannerscollection_zoominout_photoText6" data-bottom-thumb="images/opportuneFullScreen/thumbs/010_opportune.png" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/010_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>

                    <li data-text-id="#bannerscollection_zoominout_photoText6" data-bottom-thumb="images/opportuneFullScreen/thumbs/011_opportune.png" data-horizontalPosition="right" data-verticalPosition="top" data-initialZoom="0.8" data-finalZoom="1">
                    	<img src="images/opportuneFullScreen/011_opportune_full.jpg" alt="" width="2500" height="1570" />
                    </li>--%>
                </ul>    
                
                
                
               <!-- TEXTS -->
              <div id="bannerscollection_zoominout_photoText1" class="bannerscollection_zoominout_texts">
                    <div class="bannerscollection_zoominout_text_line textElement11_opportuneFullScreen" data-initial-left="550" data-initial-top="70" data-final-left="100" data-final-top="70" data-duration="0.5" data-fade-start="0" data-delay="0">Tea leaves in field</div>
                    <div class="bannerscollection_zoominout_text_line textElement12_opportuneFullScreen" data-initial-left="50" data-initial-top="120" data-final-left="100" data-final-top="120" data-duration="0.5" data-fade-start="0" data-delay="0.3"> always fresh and organic</div>
               </div>       
               
                <div id="bannerscollection_zoominout_photoText2" class="bannerscollection_zoominout_texts">
                    <div class="bannerscollection_zoominout_text_line textElement21_opportuneFullScreen" data-initial-left="150" data-initial-top="0" data-final-left="150" data-final-top="260" data-duration="0.5" data-fade-start="0" data-delay="0">Kanyam illam</div>
                    <div class="bannerscollection_zoominout_text_line textElement22_opportuneFullScreen" data-initial-left="150" data-initial-top="384" data-final-left="150" data-final-top="240" data-duration="0.5" data-fade-start="0" data-delay="0.3">Best tea gardens in the world</div>
               </div>
               
           
                <div id="bannerscollection_zoominout_photoText4" class="bannerscollection_zoominout_texts">
                    <div class="bannerscollection_zoominout_text_line textElement41_opportuneFullScreen" data-initial-left="680" data-initial-top="50" data-final-left="100" data-final-top="50" data-duration="0.5" data-fade-start="0" data-delay="0">Gardens like paradise</div>
                    <div class="bannerscollection_zoominout_text_line textElement42_opportuneFullScreen" data-initial-left="0" data-initial-top="80" data-final-left="100" data-final-top="80" data-duration="0.5" data-fade-start="0" data-delay="0.3">blessed by nature, nurtured by beauty</div>
                    <div class="bannerscollection_zoominout_text_line textElement43_opportuneFullScreen" data-initial-left="100" data-initial-top="130" data-final-left="100" data-final-top="130" data-duration="1" data-fade-start="0" data-delay="0.5">emerald greenery and best scenery</div>               
               </div>  
               

			<div id="bannerscollection_zoominout_photoText6" class="bannerscollection_zoominout_texts">
                    <div class="bannerscollection_zoominout_text_line textElement61_opportuneFullScreen" data-initial-left="150" data-initial-top="60" data-final-left="150" data-final-top="60" data-duration="0.5" data-fade-start="0" data-delay="0">No where like Illam</div>
                    <div class="bannerscollection_zoominout_text_line textElement62_opportuneFullScreen" data-initial-left="155" data-initial-top="190" data-final-left="155" data-final-top="190" data-duration="0.5" data-fade-start="0" data-delay="0.3">it will be you best travel experience</div>
               </div>  

               <!--EndTexts--> 
               
               
                                         
                           
           </div>  

           
           
<div id="logx"></div>
</body>
</html>
