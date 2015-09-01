<%-- 
    Document   : success.jsp
    Created on : Sep 1, 2015, 12:59:59 PM
    Author     : hainam1421
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DVD-shopper</title>
<link href="style/style-default.css" rel="stylesheet" type="text/css" />
<link href="style/skin04/style.css" rel="stylesheet" type="text/css" />
<link href="style/contact.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

dateFuture = new Date(2012,3,23,22,24,40);

function GetCount(){

	dateNow = new Date();									//grab current date
	amount = dateFuture.getTime() - dateNow.getTime();		//calc milliseconds between dates
	delete dateNow;

	// time is already past
	if(amount < 0){
		document.getElementById('countbox').innerHTML="Now!";
	}
	// date is still good
	else{
		days=0;hours=0;mins=0;secs=0;out="";

		amount = Math.floor(amount/1000);//kill the "milliseconds" so just secs

		days=Math.floor(amount/86400);//days
		amount=amount%86400;

		hours=Math.floor(amount/3600);//hours
		amount=amount%3600;

		mins=Math.floor(amount/60);//minutes
		amount=amount%60;

		secs=Math.floor(amount);//seconds

		if(days != 0){out += "<div class='col'><div class='top'>"+ days + "</div>" +"<div class='bottom'>day"+((days!=1)?"s":"")+ "</div></div>";}
		if(days != 0 || hours != 0){out += "<div class='col'><div class='top'>"+ hours + "</div>" +" <div class='bottom'>hour"+((hours!=1)?"s":"")+ "</div></div>";}
		if(days != 0 || hours != 0 || mins != 0){out +="<div class='col'><div class='top'>"+ mins + "</div>" +" <div class='bottom'>minute"+((mins!=1)?"s":"")+ "</div></div>";}
		out += "<div class='col'><div class='top'>"+secs +"</div>" +" <div class='bottom'>seconds</div></div>";
		document.getElementById('countbox').innerHTML=out;

		setTimeout("GetCount()", 1000);
	}
}

window.onload=GetCount;//call when everything has loaded

</script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        <script src="scripts/jquery.chili.pack.js" type="text/javascript"></script>
        <script src="scripts/jquery.backgroundPosition.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
			 $.noConflict();
               $('#progressMain')
					.css({backgroundPosition: '100% 11px'}) // workaround for FF 2.0 bug
					.animate({'background-position': '0% 11px'}, 2000) //    35% = (100 - 65) %
					
               $('#logo')
					.css({backgroundPosition: '50% -50px'}) // workaround for FF 2.0 bug
					.animate({'background-position': '50% 36px'}, 2500) //    50% = (100 - 50) %
	               
            });
			
        </script>

<script src="scripts/jquery.js" type="text/javascript"></script>
<script src="scripts/jquery.simplemodal.js" type="text/javascript"></script>
<script src="scripts/contact.js" type="text/javascript"></script>
</head>

<body>
<div class="container">
<div class="layout">
<div id="logo"></div>
<div id="bar">
  <div id="progress">100% Order Success</div><div class="progressBg"><div class="progressBar"><div id="progressMain"><div class="progressShade"><div class="progressBar_left"></div></div></div>

</div></div>
					<p></p>
				</div>
				<center>
<div class="countdown"><div style="padding-top: 2%;">Thank you for buying product<br/> we will send the product for you in the shortest time.</div></div>  
</center>
<div class="buttons">
<div class="tab">
<a href="#" id="contact"><span><img src="images/contactus_icon.png" alt="Contact Us" /></span>Contact Us</a>
<a href="home.jsp" id="subscribe"><center>Home Back </center></a>
</div>
<div class="share"><h1>&nbsp;&nbsp;&nbsp;&nbsp;</h1><span class="share_icons">
<a href="#" title="Share Us on Facebook"><img src="images/facebook.png" alt="Facebook" /></a>
<a href="#" title="Save on Delicious"><img src="images/delicious.png" alt="" /></a>
<a href="#" title="Linked In"><img src="images/linkedin.png" /></a>
<a href="#" title="Yahoo"><img src="images/yahoo.png" /></a>
<a href="#" title="Twitter"><img src="images/twitter.png" /></a>
<a href="#" title="Myspace"><img src="images/myspace.png" /></a>
<a href="#" title="Digg"><img src="images/digg.png" /></a></span>
</div></div>
<div class="content">
<h1>Who We Are</h1>
<p>FAI-C1212L-Sem4-G5. <br /> Hải Nam<br /> Trung kiên <br /> Văn Hiệp</p>
</div>
</body>
</html>
