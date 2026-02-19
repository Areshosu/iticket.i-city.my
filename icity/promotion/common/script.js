String.prototype.trim = function() { 
	return this.replace(/^\s+|\s+$/, ''); 
};
String.prototype.startsWith = function(str) {
	return (this.match("^"+str)==str);
};
String.prototype.endsWith = function(str) {
	return (this.match(str+"$")==str);
};
	
$(document).ready(function() {
	/**
	 * To disable the default right-click function.
	 *
	$(document).bind("contextmenu", function(e){
		alert("Sorry, right-click has been disabled.");
	    return false;
	});
     */
     
	$(top.document)
		.ajaxStart(function(data) {
			window.status = "working...";
		}).ajaxStop(function(data) {
			window.status = "...completed";
		}).ajaxError(function(event, request, settings, error) {
			var msg = "System Exception: \n\n";
			try {
				//alert(common.debug(request));
				
				msg += "Title: " + $(request.responseText).find("title").eq(1).text()+"\n";
				msg += "Code: "+request.status+"\n\n";
				
				if(request.status == "404") {
					msg += "Message: Server not in service at this moment.\n";
				}
				
				$(request.responseText).find("u:last").each(function() {
					msg += $(this).text()+"\n";
				});
			} catch (e) {
				msg = e;
			}
			//alert(msg);
		});
		
     $(".menu a").click(function() {
			if($(this).attr("href") == "#") {
				alert("Under construction, come back soon...");
				return false;
			} else {
				return true;
			}
		});
});

var common = {
	isDebug : function() {
		return false;
	},
	
	debug : function(elem) {
		var s = "";
		
		for(name in elem) {
			try {
				s += name +": "+ elem[name] + "\n";
			
			} catch (ex) {
				s += name +"--> "+ ex;
			} 
		}
		return s;
	},
	
	setupRequiredMark: function(container) {
		var markHtml = '<span class="required-mark">*</span> ';
		if(container) {
			$(".required", container).each(function() {
				if($(".required-mark", this).length == 0) {
					$(markHtml).prependTo(this);
				}
			});
		} else {
			$(".required").each(function() {
				if($(".required-mark", this).length == 0) {
					$(markHtml).prependTo(this);
				}
			});
		}
	},
	
	isOk: function(response) {
		return $(".code", response).text() == "OK";
	},
	
	popup: function(msg, options) {
		var code = $(".code", msg).text();		
		if(code == "OK") {
			$.jGrowl(code+": "+$(".item", msg).html(), options);
			return true;
		} else {
			alert(code+": "+$(".item", msg).text());
			return false;
		}
	},
	
	popupText: function(text, options) {
		$.jGrowl(text, options);
	},
	
	alertText: function(text, onClose, title) {
		if(!title) title = "Alert";
		var div = $("<div></div>").html(text);
		$("body").append(div);
		$(div).dialog({ 
			title: title,
			autoOpen: false,
			width: "400",
			modal: true,
			buttons: { 
				"Close": function() { 
					$(this).dialog("close");
					if(onClose) onClose(this); 
				}
			} 
		}).dialog("open"); 
	},
	
	alert : function(msg, onClose) {
		var code = $(".code", msg).text();		
		alert(code+": "+$(".item", msg).text());
		if(onClose) onClose();
		return false;
	},
	
	setupDialog: function(e) {
		$(e).click(function() {
			var div = $("<div></div>").load($(this).attr("href"));
			$("body").append(div);
			$(div).dialog({ 
				title: e.title,
				autoOpen: false,
				width: "700",	
				position: "top",
				buttons: { "Close": function() { $(this).dialog("close"); } } 
			}).dialog("open");
			
			return false;
		});
	},
	
	block: function(msg) {
		if(!msg) msg = "Just a moment...";
		
		$.blockUI({ 
			message: '<img src="/ezweb/theme/standard/img/busy_blue.gif"/> ' + msg
		});
	},
	
	unblock: function() {
		$.unblockUI();
	}
	
}

function f16(str){
	str=""+str;
    var r="";
    var e=str.length;
    var s=0;
    while(e>0){
        s=e-2;
        r=String.fromCharCode("0x"+str.substring(s,e))+r;
        e=s;
    }
    return r;
}

function getMemberLoginCookie() {
    return $.cookie(_memberLoginCookieName);
}

function isMemberStillLogin() {
    return (getMemberLoginCookie() != null);
}

function forwardToLogin() {
	window.location.replace(_contextPath+"/consumer/view/member/login-my-account.jsp");
}

function forwardForNoLongerLogin() {
    if(isMemberStillLogin()) {
        return false;
    } else {
    	forwardToLogin();
        return true;
    }
}

function forwardHomeForSessionTimeOut() {
	if(isMemberStillLogin()) {
        return false;
    } else {
    	alert("Session timeout.");
        window.location = _contextPath+"/consumer/";
        return true;
    }
}

var cookieTrim = function(cookieName) {
    var cookieValue = "" + $.cookie(cookieName);
    //cookieValue = unescape(cookieValue);
    var valueLength = cookieValue.length;
    var firstQuote = cookieValue.indexOf('"');
    var lastQuote = cookieValue.lastIndexOf('"');
    if(valueLength == 0
    	    || firstQuote == lastQuote
    	    || !(firstQuote == 0 && lastQuote == valueLength - 1)) {
    	return cookieValue;
    }
    
    return cookieValue.substring(1, valueLength - 1);
}

var cookieTrimSplit = function(cookieName) {
    return cookieTrim(cookieName).split(_cookieSeparator);
}

function IsIE() {
    return ( navigator.appName=="Microsoft Internet Explorer" );
}

