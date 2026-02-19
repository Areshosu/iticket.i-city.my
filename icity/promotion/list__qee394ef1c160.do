












<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link rel="shortcut icon" href="/icity/images/favicon.ico">
<title>Promotions | iCity</title>


<link rel="stylesheet" type="text/css" media="screen" href="/web/jquery/themes/smoothness/jquery-ui.css"/>
<!--[if lte IE 7]>
<style type="text/css">
html .jquerycssmenu{height: 1%;} /*Holly Hack for IE7 and below*/
</style>
<![endif]-->

<link rel="stylesheet" type="text/css" href="/icity/promotion/common/awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/icity/promotion/common/reset.css"/>
<link rel="stylesheet" type="text/css" href="/icity/promotion/common/screen-min.css"/>




<script type="text/javascript" src="/icity/promotion/common/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/web/jquery/form/jquery.form.js"></script>
<script type="text/javascript" src="/icity/promotion/common/jquery.maskedinput.js"></script>
<script type="text/javascript" src="/icity/promotion/common/jquery-ui-min.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.countdown.js"></script>
<script type="text/javascript" src="/web/jquery/misc/date.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.cookie.js"></script>
<script type="text/javascript" src="/icity/promotion/common/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/icity/promotion/common/jquery.skitter.min.js"></script>
<!-- 
<script type="text/javascript" src="/web/jquery/misc/jquery.dimensions.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.dates.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.chain.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.cookie.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.template.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.timer.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.heartbeat.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.blockUI.js"></script>
<script type="text/javascript" src="/web/jquery/misc/jquery.filter.js"></script>
<script type="text/javascript" src="/web/jquery/misc/calendar.js"></script>
<script type="text/javascript" src="/web/jquery/validate/jquery.metadata.js"></script>
 -->
<script type="text/javascript" src="/icity/promotion/common/script.js"></script>

<script>
var _contextPath = "/icity";
var _memberLoginCookieName = 'memberLoginCookie';
var _cookieSeparator = "-_-_-";


(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-58394361-1', 'iticket.i-city.my');
ga('send', 'pageview');


</script>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">


<style type="text/css">
.item_listing .photo img {width: 305px !important; height: 260px !important;}
.dialog select {padding: 2px 1px !important}
.dialog .prices th, .dialog .prices td {text-align:right}
.dialog .prices .left {text-align:left !important}
.ui-widget-overlay {
   position: fixed;
}
.ui-dialog {
   position: fixed;
}
</style>
<script type="text/javascript" src="cart.js"></script>
<script>
$(document).ready(function() {


	$.ajax({
		url: "/icity/promotion/category.get",
		success: function(response) {
			$("ul.categories").html(response);
		}
	});

	$('.box_skitter').skitter({
		theme: 'clean',
		numbers_align: 'left',
		dots: true, 
		preview: true
	});
	
});
</script>

</head>
<body>

<!-- wrapper -->
<div class="wrapper wide">
	
<script type="text/javascript">
$(document).ready(function() {
	if(!isMemberStillLogin()) {
		$(".member-option").hide();
		$(".login-option").show();
	} else {
		$(".login-option").hide();
		$(".member-option").show();
		var memberName = $.cookie('memberNameCookie');
		memberName = memberName.replace(/"/g, "");
		$("#memberName").text(memberName);
	}

	$("#logout").click(function() {
		if(confirm("Are you sure you want to logout your account now?")) {	
			$.cookie('memberLoginCookie', null, {expires: 0, path: '/'});
			window.location = "/icity/promotion/list.do";
			return false;
		}
	});
	
	getCartCount();
});

function getCartCount() {
	$.ajax({
		url: "/icity/promotion/cart-count.get",
		success: function(response) { 
			$("#cart-count").html(response);
		}
	});
}
</script>
<div class="main_header left">
	<a href="/icity/promotion/list.do">
		<img src="/icity/images/logo_title.jpg" border="0" /> <br>
		<span style="color:white; font-size:20px";><b>Online Ticketing</b></span>
	</a>
</div>

<!-- navigator -->
<div class="main_navigator">
	<ul>
		<li><a href="/icity/promotion/list.do">Home</a></li>
		<li><a href="/icity/promotion/how-to-go.get">How To Go</a></li>
		<li><a href="/icity/promotion/operation-hours.get">Operation Hours</a></li>
		<li><a href="/icity/promotion/faq.get">FAQs</a></li>
		<li><a href="http://i-city.my/crm/" target="_blank" title="Click to contact us">Support</a></li>
		<li><a href="/icity/promotion/about-us.get">Contact Us</a></li>
	</ul>
</div>

<!-- userbar -->
<div class="main_userbar">
	<div class="main_userbar_inner">
		<ul>
			<li class="login-option"><a href="/icity/member/signin.do"><i class="icon-lock"></i> Welcome (Guest)</a></li>
			<li class="member-option"><a href="/icity/member/account.do"><i class="icon-lock"></i> Welcome (<span id="memberName"></span>)</a></li>
			<li class="login-option"><a href="/icity/member/signin.do"><i class="icon-signin"></i> Sign In</a></li>
			<li class="login-option"><a href="/icity/registration"><i class="icon-keyboard"></i> Register</a></li>
			<li class="member-option"><a href="#" id="logout"><i class="icon-signout"></i> Logout</a></li>
			<li><a href="/icity/promotion/checkout.do"><i class="icon-shopping-cart"></i> <span id="cart-count">Shopping Cart</span></a></li>
		</ul>
	</div>
</div>



	<!-- body -->
	<div class="main_body left">

		<!-- leftbar -->
		<div class="sidebar left">
			<div>
				<h3>Categories</h3>
				<ul class="categories"></ul>
			</div>
		</div>

		<!-- rightbar -->
		<div class="sidebar right">				
		</div>

		<!-- content -->
		<div class="content">
			
			<div class="content_inner">
				<h1 class="skin">Featured Promotion</h1>
				<div class="item_listing larger">
				<ul>
					
					
				</ul>
				</div>
			</div>
		</div>
	</div>

	
<div class="main_footer">
	<div class="main_footer_inner">
		<h3><span></span></h3>
		<div class="footer">
		<table style="width:100%">
			<tr>
				<td>
					<b>Stay Connected:</b>
				</td>
				<td>
					<b>Related Sites:</b>
				</td>
				<td>
					<b>Email Enquiries:</b>
				</td>
				<td>
					<b>Customer Support (Office Hour):</b>
				</td>
				<td rowspan="2" style="vertical-align:top; text-align:right; color: #666666;">
					<div id="copyright">
					Copyright © 2015. Best Compatible With Google Chrome & Internet Explorer
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<a href="https://www.facebook.com/icity.cityofdigitallights" target="_blank" title="https://www.facebook.com/icity.cityofdigitallights">
						<img src="/icity/images/fb.jpg" width="30" height="30" border="0" />
					</a>
					<a href="https://instagram.com/iCitytravel" target="_blank" title="https://instagram.com/iCitytravel">
						<img src="/icity/images/insta.jpg" width="30" height="30" border="0" />
					</a>
				</td>
				<td style="vertical-align:top;">
					<a href="http://www.i-City.my" target="_blank" title="http://www.i-City.my">www.i-City.my</a>
				</td>
				<td style="vertical-align:top;">
					<a href="mailto:travel@i-city.my" target="_blank">travel@i-city.my</a>
				</td>
				<td style="vertical-align:top;">
					<span style="text-decoration: underline;">+603-55218868</span><br/>
					<span style="text-decoration: underline;">+603-55218800</span>
				</td>
			</tr>
		</table>
		</div><br><br>
	</div>
</div>
</div>

</body>
</html>

