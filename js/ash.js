//for tabs

$(function () {
    $("#tabs").tabs();
});

//for ad shown at homepage eg. tea pouring and eg. gallery
jQuery(function () {

    jQuery('#bannerscollection_zoominout_opportune').bannerscollection_zoominout({
        skin: 'opportune',
        responsive: true,
        width: 300,
        height: 600,
        circleRadius: 8,
        circleLineWidth: 4,
        circleColor: "#ffffff", //849ef3
        circleAlpha: 50,
        behindCircleColor: "#000000",
        behindCircleAlpha: 20,
        thumbsWrapperMarginTop: -40
    });


});


//jssor slider eg. 7 tea cups gallery at home page

jQuery(document).ready(function ($) {
    var options = {
        $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
        $AutoPlaySteps: 3,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
        $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
        $PauseOnHover: 0,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, default value is 3

        $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
        $SlideDuration: 300,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
        $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
        $SlideWidth: 200,                                   //[Optional] Width of every slide in pixels, default value is width of 'slides' container
        //$SlideHeight: 150,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
        $SlideSpacing: 3, 					                //[Optional] Space between each slide in pixels, default value is 0
        $DisplayPieces: 3,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
        $ParkingPosition: 205,                              //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
        $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, direction navigator container, thumbnail navigator container etc).
        $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, default value is 1
        $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

        $NavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
            $Class: $JssorNavigator$,                       //[Required] Class to create navigator instance
            $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
            $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
            $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
            $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
            $SpacingX: 0,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
            $SpacingY: 0,                                   //[Optional] Vertical space between each item in pixel, default value is 0
            $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
        },

        $DirectionNavigatorOptions: {
            $Class: $JssorDirectionNavigator$,              //[Requried] Class to create direction navigator instance
            $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
            $AutoCenter: 2,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
            $Steps: 3                                       //[Optional] Steps to go for each navigation request, default value is 1
        }
    };

    var jssor_slider1 = new $JssorSlider$("slider1_container", options);
});


//date picker

//$(function () {
//    $("input[id*=admindatepicker]").datepicker({
//        changeMonth: true,    
//        altFormat: "DD, d MM, yy"
//    });
//});

//***date picker asp.net
$(function(){
$("input[id*=textdatepicker]").datepicker({
    altField: "#alternate",
    altFormat: "DD, d MM, yy"
});
});
//$(function () {
//    $("input[id*=datepicker]").datepicker();
//});


//tool tip at order form

$(function () {
    var tooltips = $("[title]").tooltip();
    $("<button>")
});


//accordion at home page

$(function () {
    $("#accordion").accordion({
        heightStyle: "content"
    });
});



////expander

//$(document).ready(function () {
//    // Create jqxExpander

//    $("#jqxExpander").jqxExpander({ width: '350px' });
//});


//button

$(document).ready(function () {
    $("#orderbutton").button();
});


// tiny scrollbar
$(document).ready(function () {
    $('#scrollbar1').tinyscrollbar();
});
