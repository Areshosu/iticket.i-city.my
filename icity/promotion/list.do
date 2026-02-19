












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


	$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "9D7281B3-EEAB-4451-B43E-7FEFE0DFA676", "2D1NFEB17", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "9D7281B3-EEAB-4451-B43E-7FEFE0DFA676", "2D1NFEB17");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676").empty();
		}
	});
	
	$("#open-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676").click(function() {
		$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676")
			.load("/icity/promotion/dialog.do?id=9D7281B3-EEAB-4451-B43E-7FEFE0DFA676&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676").dialog("close");
				}
				$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 05-1, 31),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .price-list").hide();
					$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .price-" + $(option).val()).show();
					doCalc("9D7281B3-EEAB-4451-B43E-7FEFE0DFA676");
				});
				
				$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .time").click(function() {
					doCalc("9D7281B3-EEAB-4451-B43E-7FEFE0DFA676");
				});
				
				$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("9D7281B3-EEAB-4451-B43E-7FEFE0DFA676") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676 .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("9D7281B3-EEAB-4451-B43E-7FEFE0DFA676") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "56F39586-BBE6-429D-B71D-B1A207D74EF0", "ADHPNONMY", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "56F39586-BBE6-429D-B71D-B1A207D74EF0", "ADHPNONMY");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0").empty();
		}
	});
	
	$("#open-56F39586-BBE6-429D-B71D-B1A207D74EF0").click(function() {
		$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0")
			.load("/icity/promotion/dialog.do?id=56F39586-BBE6-429D-B71D-B1A207D74EF0&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0").dialog("close");
				}
				$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 06-1, 24),
					
					beforeShowDay: function(date) {
						if('1,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .price-list").hide();
					$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .price-" + $(option).val()).show();
					doCalc("56F39586-BBE6-429D-B71D-B1A207D74EF0");
				});
				
				$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .time").click(function() {
					doCalc("56F39586-BBE6-429D-B71D-B1A207D74EF0");
				});
				
				$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("56F39586-BBE6-429D-B71D-B1A207D74EF0") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0 .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("56F39586-BBE6-429D-B71D-B1A207D74EF0") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F", "WWRCPARENT", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F", "WWRCPARENT");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F").empty();
		}
	});
	
	$("#open-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F").click(function() {
		$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F")
			.load("/icity/promotion/dialog.do?id=AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F").dialog("close");
				}
				$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 05-1, 31),
					
					beforeShowDay: function(date) {
						if('1,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .price-list").hide();
					$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .price-" + $(option).val()).show();
					doCalc("AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F");
				});
				
				$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .time").click(function() {
					doCalc("AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F");
				});
				
				$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "D2F185D1-1B91-4B60-B7E0-5C8792EBB99E", "BIRTHDAY17", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "D2F185D1-1B91-4B60-B7E0-5C8792EBB99E", "BIRTHDAY17");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E").empty();
		}
	});
	
	$("#open-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E").click(function() {
		$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E")
			.load("/icity/promotion/dialog.do?id=D2F185D1-1B91-4B60-B7E0-5C8792EBB99E&visitDate=30/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E").dialog("close");
				}
				$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .calendar").datepicker({
					minDate: new Date(2017, 05-1, 30),
					maxDate: new Date(2017, 12-1, 31),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .price-list").hide();
					$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .price-" + $(option).val()).show();
					doCalc("D2F185D1-1B91-4B60-B7E0-5C8792EBB99E");
				});
				
				$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .time").click(function() {
					doCalc("D2F185D1-1B91-4B60-B7E0-5C8792EBB99E");
				});
				
				$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("D2F185D1-1B91-4B60-B7E0-5C8792EBB99E") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("D2F185D1-1B91-4B60-B7E0-5C8792EBB99E") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-7143091B-6260-4FDA-A957-3C621204427D").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "7143091B-6260-4FDA-A957-3C621204427D", "IC200B1F1", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "7143091B-6260-4FDA-A957-3C621204427D", "IC200B1F1");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-7143091B-6260-4FDA-A957-3C621204427D").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-7143091B-6260-4FDA-A957-3C621204427D").empty();
		}
	});
	
	$("#open-7143091B-6260-4FDA-A957-3C621204427D").click(function() {
		$("#dialog-7143091B-6260-4FDA-A957-3C621204427D")
			.load("/icity/promotion/dialog.do?id=7143091B-6260-4FDA-A957-3C621204427D&visitDate=30/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-7143091B-6260-4FDA-A957-3C621204427D").dialog("close");
				}
				$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .calendar").datepicker({
					minDate: new Date(2017, 05-1, 30),
					maxDate: new Date(2017, 06-1, 23),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-7143091B-6260-4FDA-A957-3C621204427D input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .price-list").hide();
					$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .price-" + $(option).val()).show();
					doCalc("7143091B-6260-4FDA-A957-3C621204427D");
				});
				
				$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .time").click(function() {
					doCalc("7143091B-6260-4FDA-A957-3C621204427D");
				});
				
				$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("7143091B-6260-4FDA-A957-3C621204427D") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-7143091B-6260-4FDA-A957-3C621204427D .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("7143091B-6260-4FDA-A957-3C621204427D") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "4BA0767D-C332-464C-8C1C-55CCBE24CF02", "IC50B1F1", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "4BA0767D-C332-464C-8C1C-55CCBE24CF02", "IC50B1F1");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02").empty();
		}
	});
	
	$("#open-4BA0767D-C332-464C-8C1C-55CCBE24CF02").click(function() {
		$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02")
			.load("/icity/promotion/dialog.do?id=4BA0767D-C332-464C-8C1C-55CCBE24CF02&visitDate=30/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02").dialog("close");
				}
				$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .calendar").datepicker({
					minDate: new Date(2017, 05-1, 30),
					maxDate: new Date(2017, 06-1, 23),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .price-list").hide();
					$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .price-" + $(option).val()).show();
					doCalc("4BA0767D-C332-464C-8C1C-55CCBE24CF02");
				});
				
				$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .time").click(function() {
					doCalc("4BA0767D-C332-464C-8C1C-55CCBE24CF02");
				});
				
				$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("4BA0767D-C332-464C-8C1C-55CCBE24CF02") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02 .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("4BA0767D-C332-464C-8C1C-55CCBE24CF02") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF", "WWJULAUG", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF", "WWJULAUG");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF").empty();
		}
	});
	
	$("#open-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF").click(function() {
		$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF")
			.load("/icity/promotion/dialog.do?id=AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF").dialog("close");
				}
				$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 06-1, 12),
					
					beforeShowDay: function(date) {
						if('1,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .price-list").hide();
					$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .price-" + $(option).val()).show();
					doCalc("AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF");
				});
				
				$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .time").click(function() {
					doCalc("AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF");
				});
				
				$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-9D582251-B080-4577-A019-E7613965C000").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "9D582251-B080-4577-A019-E7613965C000", "WWMJUNE16N", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "9D582251-B080-4577-A019-E7613965C000", "WWMJUNE16N");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-9D582251-B080-4577-A019-E7613965C000").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-9D582251-B080-4577-A019-E7613965C000").empty();
		}
	});
	
	$("#open-9D582251-B080-4577-A019-E7613965C000").click(function() {
		$("#dialog-9D582251-B080-4577-A019-E7613965C000")
			.load("/icity/promotion/dialog.do?id=9D582251-B080-4577-A019-E7613965C000&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-9D582251-B080-4577-A019-E7613965C000").dialog("close");
				}
				$("#dialog-9D582251-B080-4577-A019-E7613965C000 .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 06-1, 12),
					
					beforeShowDay: function(date) {
						if('1,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-9D582251-B080-4577-A019-E7613965C000 input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-9D582251-B080-4577-A019-E7613965C000 .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-9D582251-B080-4577-A019-E7613965C000 .price-list").hide();
					$("#dialog-9D582251-B080-4577-A019-E7613965C000 .price-" + $(option).val()).show();
					doCalc("9D582251-B080-4577-A019-E7613965C000");
				});
				
				$("#dialog-9D582251-B080-4577-A019-E7613965C000 .time").click(function() {
					doCalc("9D582251-B080-4577-A019-E7613965C000");
				});
				
				$("#dialog-9D582251-B080-4577-A019-E7613965C000 .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("9D582251-B080-4577-A019-E7613965C000") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-9D582251-B080-4577-A019-E7613965C000 .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("9D582251-B080-4577-A019-E7613965C000") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "5960FCC4-C452-4BD7-8D4F-75DCF854B1BF", "WW4TGM17", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "5960FCC4-C452-4BD7-8D4F-75DCF854B1BF", "WW4TGM17");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF").empty();
		}
	});
	
	$("#open-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF").click(function() {
		$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF")
			.load("/icity/promotion/dialog.do?id=5960FCC4-C452-4BD7-8D4F-75DCF854B1BF&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF").dialog("close");
				}
				$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 06-1, 12),
					
					beforeShowDay: function(date) {
						if('1,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .price-list").hide();
					$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .price-" + $(option).val()).show();
					doCalc("5960FCC4-C452-4BD7-8D4F-75DCF854B1BF");
				});
				
				$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .time").click(function() {
					doCalc("5960FCC4-C452-4BD7-8D4F-75DCF854B1BF");
				});
				
				$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("5960FCC4-C452-4BD7-8D4F-75DCF854B1BF") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("5960FCC4-C452-4BD7-8D4F-75DCF854B1BF") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "14DF6929-2185-4A60-A715-FF5BB09E0A8C", "DDFREE0206", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "14DF6929-2185-4A60-A715-FF5BB09E0A8C", "DDFREE0206");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C").empty();
		}
	});
	
	$("#open-14DF6929-2185-4A60-A715-FF5BB09E0A8C").click(function() {
		$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C")
			.load("/icity/promotion/dialog.do?id=14DF6929-2185-4A60-A715-FF5BB09E0A8C&visitDate=02/06/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C").dialog("close");
				}
				$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .calendar").datepicker({
					minDate: new Date(2017, 06-1, 02),
					maxDate: new Date(2017, 06-1, 02),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .price-list").hide();
					$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .price-" + $(option).val()).show();
					doCalc("14DF6929-2185-4A60-A715-FF5BB09E0A8C");
				});
				
				$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .time").click(function() {
					doCalc("14DF6929-2185-4A60-A715-FF5BB09E0A8C");
				});
				
				$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("14DF6929-2185-4A60-A715-FF5BB09E0A8C") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("14DF6929-2185-4A60-A715-FF5BB09E0A8C") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "9BF400A7-5C6C-405C-BA13-ADE094CF97D6", "PKFREE17", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "9BF400A7-5C6C-405C-BA13-ADE094CF97D6", "PKFREE17");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6").empty();
		}
	});
	
	$("#open-9BF400A7-5C6C-405C-BA13-ADE094CF97D6").click(function() {
		$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6")
			.load("/icity/promotion/dialog.do?id=9BF400A7-5C6C-405C-BA13-ADE094CF97D6&visitDate=31/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6").dialog("close");
				}
				$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .calendar").datepicker({
					minDate: new Date(2017, 05-1, 31),
					maxDate: new Date(2017, 05-1, 31),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .price-list").hide();
					$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .price-" + $(option).val()).show();
					doCalc("9BF400A7-5C6C-405C-BA13-ADE094CF97D6");
				});
				
				$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .time").click(function() {
					doCalc("9BF400A7-5C6C-405C-BA13-ADE094CF97D6");
				});
				
				$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("9BF400A7-5C6C-405C-BA13-ADE094CF97D6") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6 .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("9BF400A7-5C6C-405C-BA13-ADE094CF97D6") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "FBA7C225-9C0F-43DD-A370-8D612B816BAE", "PSFREE17", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "FBA7C225-9C0F-43DD-A370-8D612B816BAE", "PSFREE17");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE").empty();
		}
	});
	
	$("#open-FBA7C225-9C0F-43DD-A370-8D612B816BAE").click(function() {
		$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE")
			.load("/icity/promotion/dialog.do?id=FBA7C225-9C0F-43DD-A370-8D612B816BAE&visitDate=29/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE").dialog("close");
				}
				$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .calendar").datepicker({
					minDate: new Date(2017, 05-1, 29),
					maxDate: new Date(2017, 05-1, 29),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .price-list").hide();
					$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .price-" + $(option).val()).show();
					doCalc("FBA7C225-9C0F-43DD-A370-8D612B816BAE");
				});
				
				$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .time").click(function() {
					doCalc("FBA7C225-9C0F-43DD-A370-8D612B816BAE");
				});
				
				$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("FBA7C225-9C0F-43DD-A370-8D612B816BAE") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("FBA7C225-9C0F-43DD-A370-8D612B816BAE") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "39633F7F-4992-467C-964F-ACA7CBFFE20D", "SMFREE0306", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "39633F7F-4992-467C-964F-ACA7CBFFE20D", "SMFREE0306");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D").empty();
		}
	});
	
	$("#open-39633F7F-4992-467C-964F-ACA7CBFFE20D").click(function() {
		$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D")
			.load("/icity/promotion/dialog.do?id=39633F7F-4992-467C-964F-ACA7CBFFE20D&visitDate=03/06/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D").dialog("close");
				}
				$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .calendar").datepicker({
					minDate: new Date(2017, 06-1, 03),
					maxDate: new Date(2017, 06-1, 03),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .price-list").hide();
					$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .price-" + $(option).val()).show();
					doCalc("39633F7F-4992-467C-964F-ACA7CBFFE20D");
				});
				
				$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .time").click(function() {
					doCalc("39633F7F-4992-467C-964F-ACA7CBFFE20D");
				});
				
				$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("39633F7F-4992-467C-964F-ACA7CBFFE20D") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("39633F7F-4992-467C-964F-ACA7CBFFE20D") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-63985760-E392-451C-8C03-20807630F0FE").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "63985760-E392-451C-8C03-20807630F0FE", "SMFREE305", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "63985760-E392-451C-8C03-20807630F0FE", "SMFREE305");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-63985760-E392-451C-8C03-20807630F0FE").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-63985760-E392-451C-8C03-20807630F0FE").empty();
		}
	});
	
	$("#open-63985760-E392-451C-8C03-20807630F0FE").click(function() {
		$("#dialog-63985760-E392-451C-8C03-20807630F0FE")
			.load("/icity/promotion/dialog.do?id=63985760-E392-451C-8C03-20807630F0FE&visitDate=30/05/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-63985760-E392-451C-8C03-20807630F0FE").dialog("close");
				}
				$("#dialog-63985760-E392-451C-8C03-20807630F0FE .calendar").datepicker({
					minDate: new Date(2017, 05-1, 30),
					maxDate: new Date(2017, 05-1, 30),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-63985760-E392-451C-8C03-20807630F0FE input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-63985760-E392-451C-8C03-20807630F0FE .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-63985760-E392-451C-8C03-20807630F0FE .price-list").hide();
					$("#dialog-63985760-E392-451C-8C03-20807630F0FE .price-" + $(option).val()).show();
					doCalc("63985760-E392-451C-8C03-20807630F0FE");
				});
				
				$("#dialog-63985760-E392-451C-8C03-20807630F0FE .time").click(function() {
					doCalc("63985760-E392-451C-8C03-20807630F0FE");
				});
				
				$("#dialog-63985760-E392-451C-8C03-20807630F0FE .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("63985760-E392-451C-8C03-20807630F0FE") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-63985760-E392-451C-8C03-20807630F0FE .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("63985760-E392-451C-8C03-20807630F0FE") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


	$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C").dialog({
		title: "Add to your cart",
		autoOpen: false,
		modal: true,
		width: 900,
		position: {my: 'top', at: 'top+50'},
		resizable: false,
		draggable: false,
		open: function () {
		 $('.ui-dialog').css('z-index',103);
		},
		buttons: {
			"Check Out": function() {
				doAddCart(this, "D1C6AC12-935E-4FCC-8A34-6F000BA2276C", "TAMFREE016", "checkout");
			},
			"Add to Cart": function() {
				doAddCart(this, "D1C6AC12-935E-4FCC-8A34-6F000BA2276C", "TAMFREE016");
			},
			Cancel: function() {
				if(confirm("Are you sure to cancel adding this package to your cart?")) {
					$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C").dialog("close");
				}
			}
		},
		close: function() {
			$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C").empty();
		}
	});
	
	$("#open-D1C6AC12-935E-4FCC-8A34-6F000BA2276C").click(function() {
		$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C")
			.load("/icity/promotion/dialog.do?id=D1C6AC12-935E-4FCC-8A34-6F000BA2276C&visitDate=01/06/2017", function(responseText, textStatus, XMLHttpRequest) {
				if(textStatus == "error"){
					alert("Pricing Error.");
					$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C").dialog("close");
				}
				$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .calendar").datepicker({
					minDate: new Date(2017, 06-1, 01),
					maxDate: new Date(2017, 06-1, 01),
					
					beforeShowDay: function(date) {
						if('1,2,3,4,5,6,0'.indexOf(date.getDay()) > -1) {
							return [1];
						} else {
							return [0];
						}
					},
					
					dateFormat: 'dd/mm/yy',
					altField: "#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C input.visit-date",
					altFormat: "dd/mm/yy",
					changeMonth: true,
					firstDay: 1
				});
				
				$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .mykad").change(function() {
					var option = $(":selected", this);
					$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .price-list").hide();
					$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .price-" + $(option).val()).show();
					doCalc("D1C6AC12-935E-4FCC-8A34-6F000BA2276C");
				});
				
				$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .time").click(function() {
					doCalc("D1C6AC12-935E-4FCC-8A34-6F000BA2276C");
				});
				
				$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .add").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					var max = Number($(this).siblings(".max").val());
					if(ttl < max) {
						$(this).siblings(".ttl").val(ttl + 1);
						if(doCalc("D1C6AC12-935E-4FCC-8A34-6F000BA2276C") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					} else {
						alert("Only maximum " + max + " allowed.");
					}
				});
				
				$("#dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C .minus").click(function() {
					var ttl = Number($(this).siblings(".ttl").val());
					if(ttl > 0) {
						$(this).siblings(".ttl").val(ttl - 1);
						if(doCalc("D1C6AC12-935E-4FCC-8A34-6F000BA2276C") < 0) {
							$(this).siblings(".ttl").val(ttl);
						}
					}
				});
				

			}).dialog("open");
		
		
	});


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
			
			<div id="main_slider" class="box_skitter">
				<ul>
					<!-- li><a href="/icity/promotion/view.do?promotionId=913A24CC-A430-46F5-8397-3920BD124448"><img src="/icity/images/s1.jpg"></a></li>
					<li><a href="/icity/promotion/view.do?promotionId=6C0898FD-4DC5-4B47-8E68-293990C302EC"><img src="/icity/images/s2.jpg"></a></li>
					<li><a href="/icity/promotion/view.do?promotionId=9D52C08B-DF6E-4F75-894B-470D2C8A81C5"><img src="/icity/images/s3.jpg"></a></li>
					<li><img src="/icity/images/s4.jpg"></li>
					<li><img src="/icity/images/s5.jpg"></li>
					<li><a href="/icity/promotion/view.do?promotionId=23"><img src="/icity/images/s6.jpg"></a></li>
					<li><a href="/icity/promotion/view.do?promotionId=9957D3C8-5B27-488D-86F2-5F70B26AEA31"><img src="/icity/images/s7.jpg"></a></li>
					<li><a href="https://goo.gl/o5vY15" target="_new"><img src="/icity/images/s8.jpg"></a></li -->
					
					
						
							<li><img src="/icity/promotion/bannerImg.get?id=5"></li>
						
					
						
							
								<li><a href="https://iticket.i-city.my/icity/promotion/list.do?category=713ac50b-59ad-4ae4-b65d-5fd2282e1a88"><img src="/icity/promotion/bannerImg.get?id=6"></a></li>
							
						
					
						
							
								<li><a href="https://iticket.i-city.my/icity/promotion/view.do?promotionId=AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F"><img src="/icity/promotion/bannerImg.get?id=4"></a></li>
							
						
					
						
							
								<li><a href="https://iticket.i-city.my/icity/promotion/list.do?category=cd048e41-65b0-452a-a9a7-92f848bbcab7"><img src="/icity/promotion/bannerImg.get?id=1"></a></li>
							
						
					
						
							
								<li><a href="https://iticket.i-city.my/icity/promotion/list.do?category=9"><img src="/icity/promotion/bannerImg.get?id=2"></a></li>
							
						
					
						
							
								<li><a href="https://iticket.i-city.my/icity/promotion/list.do?category=9"><img src="/icity/promotion/bannerImg.get?id=3"></a></li>
							
						
					
				</ul>
			</div>
			
			<div class="content_inner">
				<h1 class="skin">Featured Promotion</h1>
				<div class="item_listing larger">
				<ul>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=9D7281B3-EEAB-4451-B43E-7FEFE0DFA676">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=9D7281B3-EEAB-4451-B43E-7FEFE0DFA676/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=9D7281B3-EEAB-4451-B43E-7FEFE0DFA676">
								2D1N Stay and Play for 2 person (13 Feb - 31 May 2017)
								<span><p><strong>Package includes:</strong><br />- One (1) night stay at Best Western Hotel, i-City</p>
<p>- Superior Room (Twin-Sharing)<br />- Buffet Breakfast for two (2) persons<br />- One (1) x i-Card&nbsp;RM100 Value&nbsp;<br />- Free WI-FI Internet in guest rooms<br /><br />The valued i-Card can be used to enjoy various attractions at i-City Theme Park.<br /><br /><strong>Booking Period: Now - 28&nbsp;May&nbsp;2017</strong><br /><strong>Visit Period:&nbsp;3 April - 31 May&nbsp;2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
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
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="167">Attractions</td>
<td width="340">Monday - Thursday</td>
<td width="216">11am - 12am</td>
</tr>
<tr>
<td width="167">SnoWalk</td>
<td width="340">Friday</td>
<td width="216">11am - 1am</td>
</tr>
<tr>
<td width="167">Red Carpet</td>
<td width="340">Saturday</td>
<td width="216">11am - 1am</td>
</tr>
<tr>
<td width="167">Trick Art Museum</td>
<td width="340">Sunday</td>
<td width="216">11am - 12am</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td rowspan="5" width="167">Rides and Attractions</td>
<td width="340">Monday - Thursday</td>
<td width="216">6pm - 12am</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">6pm - 1am</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">6pm - 1am</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">6pm - 12am</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Monday - Thursday</td>
<td width="216">6pm - 12am</td>
</tr>
<tr>
<td width="167">City of Digital Light</td>
<td width="340">Friday</td>
<td width="216">6pm - 1am</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Saturday</td>
<td width="216">6pm - 1am</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Sunday</td>
<td width="216">6pm - 12am</td>
</tr>
<tr>
<td width="167">&nbsp;</td>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p><br />&nbsp;Remarks: Attractions operating hours are subject to change without prior notice.</p></span>
							</a>
							
							<span class="price">
								RM 338.00
								<span>RM 352.00</span>
							</span>
							
							<span class="addcart" id="open-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-9D7281B3-EEAB-4451-B43E-7FEFE0DFA676"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=56F39586-BBE6-429D-B71D-B1A207D74EF0">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=56F39586-BBE6-429D-B71D-B1A207D74EF0/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=56F39586-BBE6-429D-B71D-B1A207D74EF0">
								All Day Happy Package Non-MyCard (Now - 24 June 2017 before 6pm)
								<span><p><strong><span class="name">All Day Happy Package covers entry to:</span></strong></p>
<p>- WaterWorld (CLOSED on <strong>Tuesdays)</strong><br />- SnoWalk<br />- Red Carpet<br />- Trick Art Museum<br />- House of Horror<br />- Space Mission</p>
<p>- City of Digital Lights&nbsp;- 7 Rides (excluding Feeding Fish Frenzy, Skill Games, Rocking Chaisse)<br />- Itsy Bitsy&nbsp;- 9 Rides (excluding Fitness Junior, Arcade, Rocking Chaisse)<br />- Rides and Attractions (Ferris Wheel,&nbsp;Bumper Car,&nbsp;Circus Travel,&nbsp;Pirate Ship, Jungle Train)<br />- Others (excluding Ice Adventure, Under the Sea, UFO, Family Builders, Excavators)</p>
<p><br /> **Over 30 rides and attractions<br />&nbsp; &nbsp; Subject to weather inclement and ride/attraction maintenance<br />&nbsp; &nbsp; Subject to safety height and weight regulations. Theme Park terms &amp; conditions, rules &amp; regulations apply.<br /> <br /><br /> <strong><strong>Visit Period: &nbsp;3 April until 24 June 2017<br /><br /><br /></strong></strong></p>
<p><strong>WaterWorld:<br /></strong>NO Outside food and drinks allowed into WaterWorld, except baby formula.<br />Guests are required to be in swimwear to enter all pools.<strong><br /><br /><br /></strong></p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
<tr>
<td rowspan="6" width="167">
<p>Water World</p>
</td>
<td width="340">
<p># Closed on Tuesdays, Open if School Holidays &amp; Public Holidays fall on Tuesdays*&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="340">
<p>Monday,Wednesday,Thursday</p>
</td>
<td width="216">
<p>11am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>11am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>10am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>10am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="167">
<p>Attractions</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>11am - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>SnoWalk</p>
</td>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>11am - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>Red Carpet</p>
</td>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>11am - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>Trick Art Museum</p>
</td>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>11am - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td rowspan="5" width="167">
<p>Rides and Attractions</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm &nbsp;-1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>City of Digital Lights</p>
</td>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm &nbsp;-1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;Remarks:</p>
<ol>
<li>Attractions operating hours are subject to change on <strong>Ramadhan</strong> period without prior notice.</li>
<li>Waterworld will be closed from 13 - 21 June 2017 due to annual maintenance.&nbsp;</li>
</ol>
<p>&nbsp;</p></span>
							</a>
							
							<span class="price">
								RM 172.00
								<span>RM 352.00</span>
							</span>
							
							<span class="addcart" id="open-56F39586-BBE6-429D-B71D-B1A207D74EF0"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-56F39586-BBE6-429D-B71D-B1A207D74EF0"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F">
								For Family and MOM! - Waterworld + Red Carpet (1 person)
								<span><p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">May is for mom !! Happy Mother's Day !</span></p>
<p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Special for moms and family !</span></p>
<p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Grab this Family Deals at<strong>&nbsp;</strong>for everyone and celebrate your precious MOM&nbsp;at i-City with a package to WATERWORLD and RED CARPET for one person at only&nbsp;<strong>RM40</strong>* ! (RRP: RM85)</span></p>
<p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Challenge the ultimate Tornado in WaterWorld... from a steep 160 ft launch tower, four tube-raft riders will race down&nbsp;hurtling through a 7-storey high funnel tilted at a 45 degree angle for the ultimate adrenaline rush. A&nbsp;First in ASEAN.</span></p>
<p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Not to be missed! Experience our first home-grown interactive wax museum Red Carpet. It brings together an all-star cast of glamour and glitz, power and politics, the strange and wonderful in a 30 thousand square foot Oscar Awards setting venue.</span></p>
<p>&nbsp;</p>
<p><span style="font-size: 10pt;"><strong>Visit Period: &nbsp;2<span style="font-size: 10pt;">&nbsp;May&nbsp;2017 until 31 May&nbsp;2017</span></strong></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style="font-size: 9pt;"><strong><u>i-City Leisure Parks Operating Hours</u></strong></span></p>
<table style="height: 323px;" width="576">
<tbody>
<tr>
<td width="167"><span style="font-size: 9pt;">&nbsp;</span></td>
<td width="340"><span style="font-size: 9pt;">Day</span></td>
<td width="216"><span style="font-size: 9pt;">Operating Hours</span></td>
</tr>
<tr>
<td rowspan="6" width="167"><span style="font-size: 9pt;">Water World</span></td>
<td width="340"><span style="font-size: 9pt;"># Close on Tuesdays, Open if School Holidays &amp; Public Holidays fall on Tuesdays*&nbsp;</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Monday,Wednesday,Thursday</span></td>
<td width="216"><span style="font-size: 9pt;">11am - 7pm</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Friday</span></td>
<td width="216"><span style="font-size: 9pt;">11am - 7pm</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Saturday</span></td>
<td width="216"><span style="font-size: 9pt;">10am - 7pm</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Sunday</span></td>
<td width="216"><span style="font-size: 9pt;">10am - 7pm</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">&nbsp;</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;</span></td>
</tr>
<tr>
<td rowspan="5" width="167"><span style="font-size: 9pt;">Red Carpet</span></td>
<td width="340"><span style="font-size: 9pt;">Monday -Thursday</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;11am - 1am</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Friday</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;11am - 1am</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Saturday</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;11am - 1am</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">Sunday</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;11am - 1am</span></td>
</tr>
<tr>
<td width="340"><span style="font-size: 9pt;">&nbsp;</span></td>
<td width="216"><span style="font-size: 9pt;">&nbsp;</span></td>
</tr>
</tbody>
</table>
<p><br /><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Remarks: Attractions operating hours are subject to change without prior notice.</span></p>
<p><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">WaterWorld:</span></p>
<ol>
<li><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Outside food and drinks are not allowed into WaterWorld, except baby formula.</span></li>
<li><span style="font-size: 10pt; font-family: arial, helvetica, sans-serif;">Guests are required to be in swimwear to enter all pools.</span></li>
</ol></span>
							</a>
							
							<span class="price">
								RM 42.00
								<span>RM 87.00</span>
							</span>
							
							<span class="addcart" id="open-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-AF4C3F6F-48D9-4256-AB4E-DAEC7A718D4F"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=D2F185D1-1B91-4B60-B7E0-5C8792EBB99E">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=D2F185D1-1B91-4B60-B7E0-5C8792EBB99E/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=D2F185D1-1B91-4B60-B7E0-5C8792EBB99E">
								i-Card Member Birthday Pass 
								<span><p><span class="name">Happy Birthday! </span></p>
<p><span class="name">Special to all i-Card members,&nbsp;splash away your special day&nbsp;by basking under the sun at the Waterworld and&nbsp;enjoy the view of over a million LED lights at night to create a &lsquo;lightscape&rsquo; set in a forest of maple and pine with jewel-toned luminosity.</span></p>
<p><strong><span class="name">All Day Happy Birthday Package covers entry to:</span></strong></p>
<p>- WaterWorld (CLOSED on <strong>Tuesdays)</strong><br />- SnoWalk<br />- Red Carpet<br />- Trick Art Museum<br />- House of Horror<br />- Space Mission</p>
<p>- City of Digital Lights&nbsp;- 7 Rides (excluding Feeding Fish Frenzy, Skill Games, Rocking Chaisse)<br />- Itsy Bitsy&nbsp;- 9 Rides (excluding Fitness Junior, Arcade, Rocking Chaisse)<br />- Rides and Attractions (Ferris Wheel,&nbsp;Bumper Car,&nbsp;Circus Travel,&nbsp;Pirate Ship, Jungle Train)<br />- Others (excluding Ice Adventure, Under the Sea, UFO, Family Builders, Excavators)</p>
<p><br />**Over 30 rides and attractions<br />&nbsp; &nbsp; Subject to weather inclement and ride/attraction maintenance<br />&nbsp; &nbsp; Subject to safety height and weight regulations. Theme Park terms &amp; conditions, rules &amp; regulations apply.<br /><br /><br /><strong><strong>Visit Period: &nbsp;Now until 31 Dec&nbsp;2017<br /><br /></strong></strong><strong><br /></strong><strong><br /><br /></strong></p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
<tr>
<td rowspan="6" width="167">
<p>Water World</p>
</td>
<td width="340">
<p># Closed on Tuesdays, Open if School Holidays &amp; Public Holidays fall on Tuesdays*&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="340">
<p>Monday,Wednesday,Thursday</p>
</td>
<td width="216">
<p>11am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>11am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>10am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>10am - 7pm</p>
</td>
</tr>
<tr>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="167">
<p>Attractions</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>11am - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>SnoWalk</p>
</td>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>11am - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>Red Carpet</p>
</td>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>11am - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>Trick Art Museum</p>
</td>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>11am - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td rowspan="5" width="167">
<p>Rides and Attractions</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm &nbsp;-1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>City of Digital Lights</p>
</td>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>&nbsp;</p>
</td>
<td width="216">
<p>&nbsp;</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;Remarks:</p>
<ol>
<li><span style="font-size: 9pt;">Children <strong>below 12 years old</strong> MUST be accompanied by a paying adult.&nbsp;</span></li>
<li><span style="font-size: 9pt;">Package is available for entry to the rides stated above excluding <strong>Fitness Junior, Rocking Chaisse, Skill Games, Arcade, Family Builders, Excavators, Robot King, UFO, Fun Drive, Feeding Fish Frenzy, Ice Adventure, Under the Sea.</strong></span></li>
<li><span style="font-size: 9pt;">All Day Happy Package is not offered for walk-in purchase. "Pay per ride" rate applies to walk-in ticket purchase.</span></li>
<li><span style="font-size: 9pt;">Birthday Pass only allow&nbsp;<strong>one person</strong> per ticket.&nbsp;i-City reserves the right to check, disallow, or dishonor any redemption of ticket if there is a discrepancy between the <strong>date</strong>,&nbsp;<strong>identification card (IC)</strong>&nbsp;stated on the redemption ticket.&nbsp;</span></li>
<li><span style="font-size: 9pt;">WaterWorld:<strong><br /></strong>NO Outside food and drinks allowed into WaterWorld, except baby formula.</span><br /><span style="font-size: 9pt;">Guests are required to be in swimwear to enter all pools.</span></li>
<li><span style="font-size: 9pt;">Attractions operating hours are subject to change without prior notice.</span></li>
<li><span style="font-size: 9pt;">Subject to weather inclement and ride/attraction maintenance.</span></li>
<li><span style="font-size: 9pt;">Theme Park safety height and weight regulations apply.</span></li>
</ol></span>
							</a>
							
							<span class="price">
								RM 2.00
								<span>RM 352.00</span>
							</span>
							
							<span class="addcart" id="open-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-D2F185D1-1B91-4B60-B7E0-5C8792EBB99E"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=7143091B-6260-4FDA-A957-3C621204427D">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=7143091B-6260-4FDA-A957-3C621204427D/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=7143091B-6260-4FDA-A957-3C621204427D">
								Online Travel Fair - Buy1Free1 Point i-Card RM100
								<span><p><span style="font-family: verdana, geneva, sans-serif;"><span style="font-size: 10pt;"><span style="font-size: 11pt;"><strong>Pay RM100, Get RM200</strong>&nbsp;!!&nbsp;</span><br /><br />Do not miss this irresistible deal to visit i-City this&nbsp;<strong>Ramadhan</strong> month!!&nbsp;</span><span style="font-size: 10pt;">Grab the opportunity to enjoy<strong> Buy one Free one</strong> points in your&nbsp;<strong>i-Card</strong>!!&nbsp;<br /><br /></span><span style="font-size: 10pt;">Bookings is now open !</span></span></p>
<p><span style="font-family: verdana, geneva, sans-serif;"><span style="font-size: 10pt;"><strong><br />Visit Period: &nbsp;27 May 2017 - 23 June 2017<br /><br /></strong></span><span style="font-size: 10pt;">i-City operates on a cashless system, use your i-points to enjoy the various rides and attractions in i-City theme park.<br /><br /></span><span style="font-size: 10pt;">Denomination : RM1 = 1 i-point</span></span><br /><br /></p>
<p><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;"><strong>General Opening Hours:</strong></span><br /><span style="font-family: verdana, geneva, sans-serif; font-size: 10pt;">Weekdays: 10.00am - 12.00am</span><br /><span style="font-family: verdana, geneva, sans-serif; font-size: 10pt;">Weekends / PH / School Holidays: 10.00am - 1.00am</span></p>
<p><span style="font-family: verdana, geneva, sans-serif; font-size: 10pt;">*Operation hours subject to change during Ramadan month. Please refer to Operation Hours for more details.</span></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks&rsquo;</u><u>Attractions &amp; i-Points</u></strong></p>
<table width="528">
<tbody>
<tr>
<td rowspan="3" width="188">
<p>Attractions</p>
</td>
<td colspan="2" width="172">
<p>MyCard (Malaysian)</p>
</td>
<td colspan="2" width="160">
<p>Non-My Card (Non-Malaysian)</p>
</td>
</tr>
<tr>
<td colspan="2" width="172">
<p>i-Points</p>
</td>
<td colspan="2" width="160">
<p>i-Points</p>
</td>
</tr>
<tr>
<td width="80">
<p>Adult</p>
</td>
<td width="90">
<p>Child/Senior</p>
</td>
<td width="70">
<p>Adult</p>
</td>
<td width="88">
<p>Child/Senior</p>
</td>
</tr>
<tr>
<td width="188">
<p>Waterworld</p>
</td>
<td width="80">
<p>25</p>
</td>
<td width="90">
<p>20</p>
</td>
<td width="70">
<p>35</p>
</td>
<td width="88">
<p>30</p>
</td>
</tr>
<tr>
<td width="188">
<p>Snowalk before 6pm</p>
</td>
<td width="80">
<p>25</p>
</td>
<td width="90">
<p>20</p>
</td>
<td width="70">
<p>35</p>
</td>
<td width="88">
<p>30</p>
</td>
</tr>
<tr>
<td width="188">
<p>Snowalk after 6pm</p>
</td>
<td width="80">
<p>35</p>
</td>
<td width="90">
<p>30</p>
</td>
<td width="70">
<p>40</p>
</td>
<td width="88">
<p>35</p>
</td>
</tr>
<tr>
<td width="188">
<p>Red Carpet</p>
</td>
<td width="80">
<p>35</p>
</td>
<td width="90">
<p>30</p>
</td>
<td width="70">
<p>50</p>
</td>
<td width="88">
<p>35</p>
</td>
</tr>
<tr>
<td width="188">
<p>Trick Art Museum</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>House of Horror</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>Space Mission</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>Giant Ferris Wheel</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>5D Cinema</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Ice Adventure</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Under the Sea</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Bumper Car</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Jungle Train</p>
</td>
<td width="80">5</td>
<td width="90">5</td>
<td width="70">5</td>
<td width="88">5</td>
</tr>
<tr>
<td width="188">
<p>Circus Travel</p>
</td>
<td width="80">5</td>
<td width="90">5</td>
<td width="70">5</td>
<td width="88">5</td>
</tr>
<tr>
<td width="188">
<p>Itsy Bitsy Kids Park (9 rides)</p>
</td>
<td width="80">5*per ride</td>
<td width="90">5*per ride</td>
<td width="70">5*per ride</td>
<td width="88">5*per ride</td>
</tr>
<tr>
<td width="188">City of Digital Light</td>
<td width="80">&nbsp;</td>
<td width="90">&nbsp;</td>
<td width="70">&nbsp;</td>
<td width="88">&nbsp;</td>
</tr>
<tr>
<td width="188">
<p>Disco ride</p>
</td>
<td width="80">15</td>
<td width="90">15</td>
<td width="70">15</td>
<td width="88">15</td>
</tr>
<tr>
<td width="188">
<p>Space Walk</p>
</td>
<td width="80">20 per car</td>
<td width="90">20 per car</td>
<td width="70">20 per car</td>
<td width="88">20 per car</td>
</tr>
<tr>
<td width="188">
<p>Other rides- Super swing, Dessert train, Twisting Boat, 2Tier Carousel, Moon Jellies</p>
</td>
<td width="80">5* per ride</td>
<td width="90">5* per ride</td>
<td width="70">5* per ride</td>
<td width="88">5* per ride</td>
</tr>
</tbody>
</table>
<p>Remarks :&nbsp;</p>
<ol>
<li>Operation hour is subject to change during Ramadan month.&nbsp;</li>
<li>Waterworld will be closed from <strong>13 June - 21 June</strong> 2017 due to annual maintenance.&nbsp;</li>
<li>Theme Park safety rules &amp; regulations apply.</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 102.00
								<span>RM 202.00</span>
							</span>
							
							<span class="addcart" id="open-7143091B-6260-4FDA-A957-3C621204427D"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-7143091B-6260-4FDA-A957-3C621204427D"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=4BA0767D-C332-464C-8C1C-55CCBE24CF02">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=4BA0767D-C332-464C-8C1C-55CCBE24CF02/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=4BA0767D-C332-464C-8C1C-55CCBE24CF02">
								Online Travel Fair - Buy1Free1 Points i-Card RM50
								<span><p><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;"><span style="font-size: 11pt;"><strong>Pay RM50*, Get RM100</strong>&nbsp;!!&nbsp;</span><br /><br />Do not miss this irresistible deal to visit i-City this&nbsp;<strong>Ramadhan</strong>&nbsp;month!!&nbsp;</span><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">Grab the opportunity to enjoy<strong>&nbsp;Buy one Free one</strong>&nbsp;points in your&nbsp;<strong>i-Card</strong>!!&nbsp;<br /><br /></span><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">Bookings is now open !<br /></span><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;"><strong><span style="font-size: 10pt;"><strong><br /></strong></span>Visit Period: &nbsp;27 May 2017 - 23 June 2017<br /><br /></strong></span><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">i-City operates on a cashless system, use your i-points to enjoy the various rides and attractions in i-City theme park.<br /><br /></span><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">Denomination : RM1 = 1 i-point</span><br /><br /></p>
<p><span style="font-family: helvetica, arial, sans-serif; font-size: 11pt;"><strong>General Opening Hours:</strong></span><br /><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">Weekdays: 10.00am - 12.00am</span><br /><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">Weekends / PH / School Holidays: 10.00am - 1.00am</span></p>
<p><span style="font-family: helvetica, arial, sans-serif; font-size: 10pt;">*Operation hours subject to change during Ramadan month. Please refer to Operation Hours for more details.</span></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks&rsquo;</u><u>Attractions &amp; i-Points</u></strong></p>
<table width="528">
<tbody>
<tr>
<td rowspan="3" width="188">
<p>Attractions</p>
</td>
<td colspan="2" width="172">
<p>MyCard (Malaysian)</p>
</td>
<td colspan="2" width="160">
<p>Non-My Card (Non-Malaysian)</p>
</td>
</tr>
<tr>
<td colspan="2" width="172">
<p>i-Points</p>
</td>
<td colspan="2" width="160">
<p>i-Points</p>
</td>
</tr>
<tr>
<td width="80">
<p>Adult</p>
</td>
<td width="90">
<p>Child/Senior</p>
</td>
<td width="70">
<p>Adult</p>
</td>
<td width="88">
<p>Child/Senior</p>
</td>
</tr>
<tr>
<td width="188">
<p>Waterworld</p>
</td>
<td width="80">
<p>25</p>
</td>
<td width="90">
<p>20</p>
</td>
<td width="70">
<p>35</p>
</td>
<td width="88">
<p>30</p>
</td>
</tr>
<tr>
<td width="188">
<p>Snowalk before 6pm</p>
</td>
<td width="80">
<p>25</p>
</td>
<td width="90">
<p>20</p>
</td>
<td width="70">
<p>35</p>
</td>
<td width="88">
<p>30</p>
</td>
</tr>
<tr>
<td width="188">
<p>Snowalk after 6pm</p>
</td>
<td width="80">
<p>35</p>
</td>
<td width="90">
<p>30</p>
</td>
<td width="70">
<p>40</p>
</td>
<td width="88">
<p>35</p>
</td>
</tr>
<tr>
<td width="188">
<p>Red Carpet</p>
</td>
<td width="80">
<p>35</p>
</td>
<td width="90">
<p>30</p>
</td>
<td width="70">
<p>50</p>
</td>
<td width="88">
<p>35</p>
</td>
</tr>
<tr>
<td width="188">
<p>Trick Art Museum</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>House of Horror</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>Space Mission</p>
</td>
<td width="80">
<p>15</p>
</td>
<td width="90">
<p>15</p>
</td>
<td width="70">
<p>20</p>
</td>
<td width="88">
<p>20</p>
</td>
</tr>
<tr>
<td width="188">
<p>Giant Ferris Wheel</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>5D Cinema</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Ice Adventure</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Under the Sea</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Bumper Car</p>
</td>
<td width="80">
<p>10</p>
</td>
<td width="90">
<p>10</p>
</td>
<td width="70">
<p>10</p>
</td>
<td width="88">
<p>10</p>
</td>
</tr>
<tr>
<td width="188">
<p>Jungle Train</p>
</td>
<td width="80">5</td>
<td width="90">5</td>
<td width="70">5</td>
<td width="88">5</td>
</tr>
<tr>
<td width="188">
<p>Circus Travel</p>
</td>
<td width="80">5</td>
<td width="90">5</td>
<td width="70">5</td>
<td width="88">5</td>
</tr>
<tr>
<td width="188">
<p>Itsy Bitsy Kids Park (9 rides)</p>
</td>
<td width="80">5*per ride</td>
<td width="90">5*per ride</td>
<td width="70">5*per ride</td>
<td width="88">5*per ride</td>
</tr>
<tr>
<td width="188">City of Digital Light</td>
<td width="80">&nbsp;</td>
<td width="90">&nbsp;</td>
<td width="70">&nbsp;</td>
<td width="88">&nbsp;</td>
</tr>
<tr>
<td width="188">
<p>Disco ride</p>
</td>
<td width="80">15</td>
<td width="90">15</td>
<td width="70">15</td>
<td width="88">15</td>
</tr>
<tr>
<td width="188">
<p>Space Walk</p>
</td>
<td width="80">20 per car</td>
<td width="90">20 per car</td>
<td width="70">20 per car</td>
<td width="88">20 per car</td>
</tr>
<tr>
<td width="188">
<p>Other rides- Super swing, Dessert train, Twisting Boat, 2Tier Carousel, Moon Jellies</p>
</td>
<td width="80">5* per ride</td>
<td width="90">5* per ride</td>
<td width="70">5* per ride</td>
<td width="88">5* per ride</td>
</tr>
</tbody>
</table>
<p>Remarks :&nbsp;</p>
<ol>
<li>Operation hour is subject to change during Ramadan month.&nbsp;</li>
<li>Waterworld will be closed from <strong>13 June - 21 June</strong> 2017 due to annual maintenance.&nbsp;</li>
<li>Theme Park safety rules &amp; regulations apply.</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 52.00
								<span>RM 102.00</span>
							</span>
							
							<span class="addcart" id="open-4BA0767D-C332-464C-8C1C-55CCBE24CF02"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-4BA0767D-C332-464C-8C1C-55CCBE24CF02"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF">
								WaterWorld (MyCard)
								<span><p>WaterWorld @i-City, features water rides and games ranging from tame to wild in their propensity to provide thrills for the family.<br /><br />Get pampered as you laze in the Giant Jacuzzi, and slide down the Spiral and Rainbow slides while children splash around in Aladdin's Adventure Pool; or cruise the River Adventure passing through LED-lit grottoes while the splashing Wave pool awaits... <br /><br />Not to be missed! Challenge the ultimate Tornado... from a steep 160 ft launch tower, four tube-raft riders will race down&nbsp;hurtling through a 7-storey high funnel tilted at a 45 degree angle for the ultimate adrenaline rush. A&nbsp;First in ASEAN.</p>
<p>&nbsp;<br /><br /><span style="font-family: Verdana, sans-serif;"><span style="font-size: 8.5pt;"><strong>Visit date</strong>: <strong>3 April&nbsp;</strong></span></span><strong><span style="font-family: Verdana, sans-serif;"><span style="font-size: 11.3333px;">until</span><span style="font-size: 8.5pt;">&nbsp;12 June 2017</span></span></strong><br /><br /></p>
<p>&nbsp;</p>
<p><span style="font-size: 8.5pt; font-family: 'Verdana','sans-serif'; color: black;">WaterWorld:</span></p>
<ol>
<li><span style="font-size: 8.5pt; font-family: 'Verdana','sans-serif'; color: black;">Outside food and drinks are not allowed into WaterWorld, except baby formula.</span></li>
<li><span style="font-size: 8.5pt; font-family: 'Verdana','sans-serif'; color: black;">Guests are required to be in swimwear to enter all pools.</span></li>
</ol>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
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
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">10am -7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p>Remarks: Attractions operating hours are subject to change on <strong>Ramadhan</strong> period without prior notice.<br /><br /></p></span>
							</a>
							
							<span class="price">
								RM 23.50
								<span>RM 27.00</span>
							</span>
							
							<span class="addcart" id="open-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-AE7FD3C7-2D8B-42D1-81D8-CC67AF7253AF"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=9D582251-B080-4577-A019-E7613965C000">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=9D582251-B080-4577-A019-E7613965C000/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=9D582251-B080-4577-A019-E7613965C000">
								WaterWorld (Non-MyCard)
								<span><p>WaterWorld @i-City, features water rides and games ranging from tame to wild in their propensity to provide thrills for the family.<br /><br />Get pampered as you laze in the Giant Jacuzzi, and slide down the Spiral and Rainbow slides while children splash around in Aladdin's Adventure Pool; or cruise the River Adventure passing through LED-lit grottoes while the splashing Wave pool awaits... <br /><br />Not to be missed! Challenge the ultimate Tornado... from a steep 160 ft launch tower, four tube-raft riders will race down&nbsp;hurtling through a 7-storey high funnel tilted at a 45 degree angle for the ultimate adrenaline rush. A&nbsp;First in ASEAN.</p>
<p>&nbsp;<br /><br /><strong>Visit date</strong>: <strong>3 April</strong>&nbsp;<strong>until 12 June 2017</strong><br /><br /></p>
<p>&nbsp;</p>
<p>WaterWorld:</p>
<ol>
<li>Outside food and drinks are not allowed into WaterWorld, except baby formula.</li>
<li>Guests are required to be in swimwear to enter all pools.</li>
</ol>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
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
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p>Remarks: Attractions operating hours are subject to change on <strong>Ramadhan</strong> period without prior notice.</p></span>
							</a>
							
							<span class="price">
								RM 33.50
								<span>RM 37.00</span>
							</span>
							
							<span class="addcart" id="open-9D582251-B080-4577-A019-E7613965C000"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-9D582251-B080-4577-A019-E7613965C000"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=5960FCC4-C452-4BD7-8D4F-75DCF854B1BF">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=5960FCC4-C452-4BD7-8D4F-75DCF854B1BF/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=5960FCC4-C452-4BD7-8D4F-75DCF854B1BF">
								WaterWorld 4 to Go (Now - 12 June 2017)
								<span><p>WaterWorld @i-City, features water rides and games ranging from tame to wild in their propensity to provide thrills for the family.</p>
<p>Get <strong>4 person</strong> to <strong>Waterworld</strong> at RM82*</p>
<p>Get pampered as you laze in the Giant Jacuzzi, and slide down the Spiral and Rainbow slides while children splash around in Aladdin's Adventure Pool; or cruise the River Adventure passing through LED-lit grottoes while the splashing Wave pool awaits...</p>
<p>Not to be missed! Challenge the ultimate Tornado... from a steep 160 ft launch tower, four tube-raft riders will race down&nbsp;hurtling through a 7-storey high funnel tilted at a 45 degree angle for the ultimate adrenaline rush. A&nbsp;First in ASEAN.</p>
<p>&nbsp;</p>
<p><strong>Visit Period : Now until 12 June<strong>&nbsp;2017</strong></strong></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
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
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">10am - 7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p>Remarks: Attractions operating hours are subject to change on <strong>Ramadhan</strong> period without prior notice.</p>
<p>WaterWorld:</p>
<ol>
<li>Outside food and drinks are not allowed into WaterWorld, except baby formula.</li>
<li>Guests are required to be in swimwear to enter all pools.</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 82.00
								<span>RM 142.00</span>
							</span>
							
							<span class="addcart" id="open-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-5960FCC4-C452-4BD7-8D4F-75DCF854B1BF"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=14DF6929-2185-4A60-A715-FF5BB09E0A8C">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=14DF6929-2185-4A60-A715-FF5BB09E0A8C/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=14DF6929-2185-4A60-A715-FF5BB09E0A8C">
								Zero Deal - 2 Tier Carousel (2 June 2017)
								<span><p>Zero deals is back !!&nbsp;</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong> 2 Tier Carousel&nbsp;</strong>this<strong>&nbsp;2 June 2017.&nbsp;</strong></p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan&nbsp;and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 2&nbsp;JUNE 2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Park Operating Hours</u></strong></p>
<table width="597">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
</tbody>
</table>
<table width="589">
<tbody>
<tr>
<td rowspan="5" width="167">
<p>&nbsp; Two-Tier Carousel</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (<strong>Ramadhan</strong>) are subject to change without prior notice.</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Two-Tier Carousel:
<ol>
<li>Guest with heartache, critical illnesses, pregnant are not encouraged to Two-Tier Carousel.&nbsp;</li>
<li>Children below 90cm must be accompanied by an adult.</li>
</ol>
</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 7.00</span>
							</span>
							
							<span class="addcart" id="open-14DF6929-2185-4A60-A715-FF5BB09E0A8C"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-14DF6929-2185-4A60-A715-FF5BB09E0A8C"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=9BF400A7-5C6C-405C-BA13-ADE094CF97D6">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=9BF400A7-5C6C-405C-BA13-ADE094CF97D6/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=9BF400A7-5C6C-405C-BA13-ADE094CF97D6">
								Zero Deal - Pirate Kid (31 May 2017)
								<span><p>Zero deals is back !!&nbsp;</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong>&nbsp;Pirate Kid&nbsp;</strong>this<strong>&nbsp;31 May 2017</strong>.</p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan period and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 31 MAY 2017</strong></p>
<p>&nbsp;</p>
<p><strong><span style="text-decoration: underline; font-size: 10pt;">Itsy Bitsy Kids Park</span></strong></p>
<table>
<tbody>
<tr style="text-align: center;">
<td width="222">
<p><span style="font-size: 10pt;">Rides</span></p>
</td>
<td width="246">
<p><span style="font-size: 10pt;">Height &amp; Weight</span></p>
</td>
</tr>
<tr style="text-align: center;">
<td width="222">&nbsp;</td>
</tr>
<tr>
<td style="text-align: center;" width="222">
<p><span style="font-size: 10pt;">Pirates Kid</span></p>
</td>
<td width="246">
<p style="text-align: center;"><span style="font-size: 10pt;">90cm-150cm&nbsp; (&le;70kg)</span></p>
</td>
</tr>
<tr>
<td width="222">&nbsp;</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Park Operating Hours</u></strong></p>
<table width="597">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
</tbody>
</table>
<table width="589">
<tbody>
<tr>
<td rowspan="5" width="167">
<p>&nbsp;&nbsp;Pirate Kid</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (Ramadhan) are subject to change without prior notice.</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Pirate Kid:
<ol>
<li>Children&nbsp;must be between 90cm to 150cm.&nbsp;</li>
<li>Adult are not permitted to ride Pirate Kid.&nbsp;</li>
</ol>
</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 7.00</span>
							</span>
							
							<span class="addcart" id="open-9BF400A7-5C6C-405C-BA13-ADE094CF97D6"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-9BF400A7-5C6C-405C-BA13-ADE094CF97D6"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=FBA7C225-9C0F-43DD-A370-8D612B816BAE">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=FBA7C225-9C0F-43DD-A370-8D612B816BAE/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=FBA7C225-9C0F-43DD-A370-8D612B816BAE">
								Zero Deal - Pirate Ship (29 May 2017)
								<span><p>Zero deals is back !!&nbsp;</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong>&nbsp;Pirate Ship&nbsp;</strong>this<strong> 29 May 2017</strong>.</p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan period and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 29 MAY 2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Park Operating Hours</u></strong></p>
<table width="597">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
</tbody>
</table>
<table style="height: 157px;" width="589">
<tbody>
<tr>
<td rowspan="5" width="167">
<p>&nbsp;&nbsp;Pirate Ship</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (Ramadhan) are subject to change without prior notice.</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Pirate Ship:
<ol>
<li>Guest with heartache, critical illnesses, pregnant are not encouraged to Pirate Ship.&nbsp;</li>
<li>Children below 90cm must be accompanied by an adult.</li>
</ol>
</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 7.00</span>
							</span>
							
							<span class="addcart" id="open-FBA7C225-9C0F-43DD-A370-8D612B816BAE"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-FBA7C225-9C0F-43DD-A370-8D612B816BAE"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=39633F7F-4992-467C-964F-ACA7CBFFE20D">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=39633F7F-4992-467C-964F-ACA7CBFFE20D/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=39633F7F-4992-467C-964F-ACA7CBFFE20D">
								Zero Deal - Space Mission (3 June 2017)
								<span><p>Zero deals is back !!</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong>&nbsp;Space Mission&nbsp;</strong>this<strong>&nbsp;3 June 2017.&nbsp;</strong></p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan&nbsp;and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 3&nbsp;JUNE 2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Park Operating Hours</u></strong></p>
<table width="597">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
</tbody>
</table>
<table width="595">
<tbody>
<tr>
<td rowspan="5" width="167">
<p>&nbsp; Space Mission</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (<strong>Ramadhan</strong>) are subject to change without prior notice.</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Space Mission:
<ol>
<li>Guest with heartache, critical illnesses, pregnant are not encouraged to Space Mission.&nbsp;</li>
<li>Children below 12 years old&nbsp;must be accompanied by an adult</li>
</ol>
</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 17.00</span>
							</span>
							
							<span class="addcart" id="open-39633F7F-4992-467C-964F-ACA7CBFFE20D"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-39633F7F-4992-467C-964F-ACA7CBFFE20D"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=63985760-E392-451C-8C03-20807630F0FE">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=63985760-E392-451C-8C03-20807630F0FE/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=63985760-E392-451C-8C03-20807630F0FE">
								Zero Deal - Space Mission (30 May 2017)
								<span><p>Zero deals is back !!</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong>&nbsp;Space Mission&nbsp;</strong>this<strong>&nbsp;30 May 2017.&nbsp;</strong></p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan&nbsp;and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 30 MAY 2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Park Operating Hours</u></strong></p>
<table width="597">
<tbody>
<tr>
<td width="167">
<p>&nbsp;</p>
</td>
<td width="340">
<p>Day</p>
</td>
<td width="216">
<p>Operating Hours</p>
</td>
</tr>
</tbody>
</table>
<table style="height: 157px;" width="595">
<tbody>
<tr>
<td rowspan="5" width="167">
<p style="text-align: center;">&nbsp; Space Mission</p>
</td>
<td width="340">
<p>Monday - Thursday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Friday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Saturday</p>
</td>
<td width="216">
<p>6pm - 1am</p>
</td>
</tr>
<tr>
<td width="340">
<p>Sunday</p>
</td>
<td width="216">
<p>6pm - 12am</p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (Ramadhan) are subject to change without prior notice.</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Space Mission:
<ol>
<li>Guest with heartache, critical illnesses, pregnant are not encouraged to Space Mission.&nbsp;</li>
<li>Children below 12 years old&nbsp;must be accompanied by an adult.</li>
</ol>
</li>
</ol></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 17.00</span>
							</span>
							
							<span class="addcart" id="open-63985760-E392-451C-8C03-20807630F0FE"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-63985760-E392-451C-8C03-20807630F0FE"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					<li>
						<span>
							<a class="photo" href="/icity/promotion/view.do?promotionId=D1C6AC12-935E-4FCC-8A34-6F000BA2276C">
								
								
								<img cover="927624" src="/icity/promotion/img.get?id=D1C6AC12-935E-4FCC-8A34-6F000BA2276C/1"/>
							</a>
							<a class="desc" href="/icity/promotion/view.do?promotionId=D1C6AC12-935E-4FCC-8A34-6F000BA2276C">
								Zero Deal - Trick Art Museum (1 June 2017)
								<span><p>Zero deals is back !!&nbsp;</p>
<p>Seize this opportunity and enliven i-City Theme Park this<strong>&nbsp;Ramadhan</strong><strong>&nbsp;!! </strong>Get free admission to<strong>&nbsp;Trick Art Museum&nbsp;</strong>this<strong>&nbsp;1 June 2017</strong>.</p>
<p>Mark your calendar now, save the date! Stay tuned for Ramadhan period and draw a variety of fun with Zero Deals on us!</p>
<p>Promotion is subject to availability and waiting time!&nbsp;Not to be missed&nbsp;!!&nbsp;First come first serve basis , book now !!</p>
<p>We wish you a blessed Ramadhan!</p>
<p>&nbsp;</p>
<p><strong>Visit Date : 1 June 2017</strong></p>
<p>&nbsp;</p>
<p><strong><u>i-City Leisure Parks Operating Hours</u></strong></p>
<table width="580">
<tbody>
<tr>
<td width="167">&nbsp;</td>
<td width="340">Day</td>
<td width="216">Operating Hours</td>
</tr>
<tr>
<td rowspan="6" width="167">Trick Art Museum</td>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
<tr>
<td width="340">Monday,Wednesday,Thursday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Friday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Saturday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">Sunday</td>
<td width="216">11am - 7pm</td>
</tr>
<tr>
<td width="340">&nbsp;</td>
<td width="216">&nbsp;</td>
</tr>
</tbody>
</table>
<p><br /><br /></p>
<p>Remarks:</p>
<ol>
<li>Attractions operating hours (Ramadhan) are subject to change without prior notice.&nbsp;</li>
<li><strong>Last entry at 10.30pm.</strong></li>
<li>Present your Redemption Pass (<strong>printed</strong>) at the respective Ride/Attraction.</li>
<li>Trick Art Museum:
<ol>
<li>Wheelchair user are not allowed&nbsp;to enter Trick Art Museum.&nbsp;</li>
</ol>
</li>
</ol>
<p>&nbsp;</p>
<p>&nbsp;</p></span>
							</a>
							
							<span class="price">
								RM 0.00
								<span>RM 17.00</span>
							</span>
							
							<span class="addcart" id="open-D1C6AC12-935E-4FCC-8A34-6F000BA2276C"><i class="icon-shopping-cart"></i> Buy Now</span>
							<div id="dialog-D1C6AC12-935E-4FCC-8A34-6F000BA2276C"></div>
							
							<span class="seperator"></span>
						</span>
					</li>
					
					
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
					<b>Contact:</b>
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
					<a href="http://www.i-city.my" target="_blank" title="http://www.i-city.my">www.i-city.my</a>
				</td>
				<td style="vertical-align:top;">
					<a href="mailto:travel@i-city.my" target="_blank">travel@i-city.my</a>
				</td>
				<td style="vertical-align:top;">
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

