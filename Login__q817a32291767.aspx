

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head><title>
	Login
</title><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" /><link href="Styles/Site.css" rel="stylesheet" type="text/css" /><link href="Styles/jquery-ui-1.10.1.custom.min.css" rel="stylesheet" type="text/css" /><link href="Styles/tooltipster.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" language="javascript" src="Scripts/jquery-ui-1.10.1.custom.min.js"></script>
    <script type="text/javascript" language="javascript" src="Scripts/jquery.tooltipster.min.js"></script>
    
</head>
<body>    
    <form method="post" action="Login.aspx?ReturnURL=http%3a%2f%2fiticket.i-city.my%2fMyProfile.aspx" id="ctl01">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJLTY4OTQ3NDYwD2QWAmYPZBYCAgMPZBYGAgUPFgIeBFRleHQFcDxzdHJvbmc+PGEgaHJlZj0nTG9naW4uYXNweCc+TG9naW48L2E+PC9zdHJvbmc+IC8gPHN0cm9uZz48YSBocmVmPSdNZW1iZXJSZWdpc3RyYXRpb24uYXNweCc+U2lnbiB1cDwvYT48L3N0cm9uZz5kAgYPDxYCHgdWaXNpYmxlaGRkAggPFgIfAWhkZO4Rrg3QM97653aLNPXmv08ouDjso5qdz6c/u67Ggyx8" />


<script src="/WebResource.axd?d=veWkTtYM1ijIUplobuxoN-in3FmwL8VL8QErf6ySeRio7H7rnjkTjcGK_5ZFRRQptY8hqt10F2VkfZzTSXlm0gQF4GEhxEY2g3fxC4DA-b41&amp;t=634972001672191775" type="text/javascript"></script>
<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAYDnJYdlaVS4hlfDQ1J9xwAmHQIae/BDi1T59YLHx05P1NOs1nmQqk3bopflIpvZkT+IXTdUqS8jWiKHKww20IdqZ+ufE5wOo7Oh1TU6hZvC4vb2fYOLbl8Y39yKts8HvRdUWNjWrzWqLlui48ZrrpDNAYXNBYcW0Hu5DpLznUbRQ==" />
    <div class="page">
        <table style="width: 100%;">
            <tr>
                <td colspan="2" >
                    <table style="vertical-align:middle;" width="100%">
                        <tr>
                            <td width="150px">
                                <a href="default.aspx" id="A1"><img src="Images/logo.jpg" style="border:0px;" />
                                    </a>
                            </td>
                            <td style="text-align: left; vertical-align: middle; font-size: 17px; font-weight: bold;">
                                <h2>i-City</h2>
                            </td>
                            <td style="text-align:right">
                                Online Ticketing (i-Ticket) Enquiries: iticket@i-city.my
                                <br>
                                TEL: 03 5521 8800 / 03 5521 8494
                            </td>
                            <td style="text-align:right">
                                <b>i-City</b>
                                <br />
                                D-1-G, Jalan Multimedia 7/AJ
                                <br />
                                City Park, i-City
                                <br />
                                40000 Shah Alam Malaysia
                            </td>
                        </tr>
                    </table>
                    <hr style="width:100%;background-color:#F68121;height:3px;border:0px" />
                </td>
            </tr>
            <tr>
                <td>
                <a href="#NavigationMenu_SkipLink"><img alt="Skip Navigation Links" src="/WebResource.axd?d=3t7bRGtALLprt3IjrH3n_nYS7M8Hs6U_Kw1puqoyKoMgxG8dxm97Ibi7EmhBhKQI1zcE7RVYkcJJl0abuKOC2p_8qSyyxSugEQcgIqUO-G01&amp;t=634972001672191775" width="0" height="0" border="0" /></a><div class="menu" id="NavigationMenu" style="z-index:9999">
	<ul class="level1">
		<li><a class="level1" href="DayPassTicket.aspx">Online Ticket Booking</a></li>
	</ul>
</div><a id="NavigationMenu_SkipLink"></a>
            </td>
            <td style="text-align:right; width: 150px; padding: 5px">
                <strong><a href='Login.aspx'>Login</a></strong> / <strong><a href='MemberRegistration.aspx'>Sign up</a></strong>&nbsp;
            </td>
        </tr>
        </table>
        
        <br />
        <div class="main">
            
    <div id="MainContent_ucMemberLogin_pnlLogin">
	
    <table width="100%">
        <tr>
            <td>
                <table align="center" width="500px" style="border: 1px solid #000000">
                    <tr>
                        <td style="width: 45%; text-align: right">
                            <font color="red">*</font> <b>Login ID</b>
                        </td>
                        <td style="width: 5px">
                            :
                        </td>
                        <td>
                            <input name="ctl00$MainContent$ucMemberLogin$txtLoginID" type="text" id="MainContent_ucMemberLogin_txtLoginID" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <font color="red">*</font> <b>Password</b>
                        </td>
                        <td style="width: 5px">
                            :
                        </td>
                        <td>
                            <input name="ctl00$MainContent$ucMemberLogin$txtPassword" type="password" id="MainContent_ucMemberLogin_txtPassword" />
                            <br />
                            <a onclick="window.open(&#39;ForgotPassword.aspx&#39;);return false;" id="MainContent_ucMemberLogin_lnkForgotPassword" href="javascript:__doPostBack(&#39;ctl00$MainContent$ucMemberLogin$lnkForgotPassword&#39;,&#39;&#39;)">Forgot Password?</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td colspan="2" style="text-align: right">
                            <input type="submit" name="ctl00$MainContent$ucMemberLogin$btnLogin" value="Login" id="MainContent_ucMemberLogin_btnLogin" class="cssbutton" />
                            <br />
                                    <br />
                                    <a id="MainContent_ucMemberLogin_lnkRegisterAsMember" href="javascript:__doPostBack(&#39;ctl00$MainContent$ucMemberLogin$lnkRegisterAsMember&#39;,&#39;&#39;)">Sign up as new member</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</div>



        </div>
        <div class="clear">
        </div>
    </div>
    <div class="footer">
        

        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-38562607-1']);
            _gaq.push(['_trackPageview']);

            (function () {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })(); 

        </script>
    </div>
    
<script type='text/javascript'>new Sys.WebForms.Menu({ element: 'NavigationMenu', disappearAfter: 500, orientation: 'horizontal', tabIndex: 0, disabled: false });</script></form>
</body>
</html>
