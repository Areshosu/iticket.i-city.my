










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
	.ui-widget-overlay {
	   position: fixed;
	}
	.ui-dialog {
	   position: fixed;
	}
	</style>
	<script type="text/javascript" src="fancybox/jquery-1.10.1.min.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />
	<script type="text/javascript" src="cart.js"></script>
	<script>
	$(document).ready(function() {

		$(".fancybox").fancybox({
			type : "image"
		});
		jQuery.noConflict();
		
		$.ajax({
			url: "/icity/promotion/category.get",
			success: function(response) {
				$("ul.categories").html(response);
			}
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
			<div class="sidebar right"></div>

			<!-- content -->
			<div class="content">
				<div class="content_inner">
					<h1 class="skin">All Day Happy Package 18-20 March (Day Before 7pm)</h1>					
					<div class="product_highlight">
						<div class="action">
							<div>
								<span class="name" itemprop="name">All Day Happy Package 18-20 March (Day Before 7pm)</span>
								<span class="desc" itemprop="description"><p>The All day happy Package includes</p>
<p>- Waterworld</p>
<p>- SnoWalk</p>
<p>- Red Carpet<br /><br />- Trick Art Museum<br /><br />- City of Digital Lights<br /><br />- Rides and Attractions<br /><br />&nbsp; -5D cinema<br />&nbsp; -Adventure Studio<br />&nbsp; -Fun Drive<br />&nbsp; -Itsy Bitsy<br />&nbsp; -Submarine<br />&nbsp; -Typhoon<br />&nbsp; -House of Horror<br />&nbsp; -Space Mission<br /><br /><br />Booking Period: Now until 20 March 2016<br />Visit Period: 18 March 2016 to 20 March 2016<br /><br /></p>
<p>&nbsp;<strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table style="height: 401px;" width="580">
<tbody>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Day</td>
<td width="216">Operating Hours</td>
</tr>
<tr>
<td rowspan="6" width="167">Water World</td>
<td width="340"># Close on Tuesdays, Open if School Holidays &amp; Public Holidays fall on Tuesdays*&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="340">Monday,Wednesday,Thursday</td>
<td width="216">12pm - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">12pm - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">11am -7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="167"><span style="text-decoration: underline;">Attractions</span></td>
<td width="340">Monday - Thursday</td>
<td width="216">12pm - 10pm</td>
</tr>
<tr>
<td width="167">SnoWalk</td>
<td width="340">Friday</td>
<td width="216">12pm - 12am</td>
</tr>
<tr>
<td width="167">Red Carpet</td>
<td width="340">Saturday</td>
<td width="216">11am - 12am</td>
</tr>
<tr>
<td width="167">Trick Art Museum</td>
<td width="340">Sunday</td>
<td width="216">11am - 10pm</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td rowspan="5" width="167">Rides and Attractions</td>
<td width="340">Monday - Thursday</td>
<td width="216">2pm - 10pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">3pm &nbsp;-12am</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">2pm - 12am</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">2pm - 10pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Monday - Thursday</td>
<td width="216">2pm - 10pm</td>
</tr>
<tr>
<td width="167">City of Digital Light</td>
<td width="340">Friday</td>
<td width="216">2pm &nbsp;-12pm</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Saturday</td>
<td width="216">2pm - 12pm</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Sunday</td>
<td width="216">2pm - 10pm</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p><br /><br /></p></span>
																
								<span class="price">
									<span>RM 115.00</span>
									RM 60.00
								</span>										
								
								
							</div>
						</div>
						
						<div class="photos">
							<ul>
								
								<li>
									<a rel="gallery" class="fancybox fancybox.ajax" href="/icity/promotion/img.get?id=809B7BDF-B87E-4BB3-8B88-05021F1EF0B5/1">
										<img itemprop="image" src="/icity/promotion/img.get?id=809B7BDF-B87E-4BB3-8B88-05021F1EF0B5/1" />
									</a>
								</li>
								
							</ul>
						</div>
						
					</div>
					<div class="product_content"><p><strong>Terms and Conditions:</strong></p>
<ol>
<li>Package is valid for one-time usage only. All attractions must be redeemed on SAME DAY.</li>
<li>Package is non-refundable for cash in any circumstances including ride closure inclement of weather .etc.</li>
<li>Unutilized Package is non-refundable or exchangeable to cash.</li>
<li>One (1) i-Card is required for one(1)Package.</li>
<li>Entry for rides and attractions are subject to height and weight restrictions.</li>
<li>The operation hours are subject to change without prior notice.</li>
<li>Child 90cm and above will require a package for entry.</li>
<li>Package price excludes RM2* i-Card Charges.</li>
<li>Online ticket purchase should be made at least one (1) days before visit date. Purchase on the visit date ticket is not available.</li>
<li>No cancellation or change of date will be accepted upon confirmation of purchase. Cancellation will only be permitted in the event of a duplicated transaction and each case will be reviewed separately before acceptance.</li>
<li>Purchase ticket is not transferable. I-City has the right to check and disallow the redemption of the voucher if the voucher is redeemed by a different person.</li>
<li>I-City will not be responsible for the loss or damage of confirmation voucher.</li>
<li>Confirmation voucher is valid for one redemption only. No partial redemption is allowed (eg. if you purchase 3 adults tickets, you will have to utilise/redeem all 3 tickets at anyone time and if you purchase Combo with 2 attractions, you will have to utilize all 2 tickets at the same day)</li>
<li>No replacement or extension will be given for any expired voucher, stolen, lost ticket or other circumstances.</li>
<li>Kindly present this voucher at i-City online ticketing counter for redemption with identity card or passport.</li>
<li>This voucher is only valid for the selected visit date. All tickets unredeemed on the specific visit<br />date will be forfeited.</li>
<li>Management reserves the right to alter,amend,delete or add to these conditions or withdraw the package at anytime without prior notice.</li>
<li>With the purchase and/or use of the online ticket, you agree to i-City's terms and conditions.<br /><br /></li>
</ol></div>
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
