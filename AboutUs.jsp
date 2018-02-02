<!-- 
/*******************************************************************
* File name    :   AboutUs.jsp
* Description  :   This jsp page displays the details about the bank
* Functionality:   This jsp page displays the details about the bank
* Models Used :    
* Restrictions:   
* Creation date:   19/11/2015)
* Modifications:
* Author:          Group-6	    Date:  19/11/2015        
* Author_Initials     19-11-2015     Initial Version	
*****************************************************************/	
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Bank of Chennai</title>
<link rel="stylesheet" href="css/Style.css" type="text/css" />
<script type="text/javascript">
window.history.forward();
function noBack() 
{
	window.history.forward();
}
</script>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<div id="container">
    <header>
    	<h1><a href="">Bank of <span>Chennai</span></a></h1>
        <h2>Tradition of trust...</h2>
    </header>
    <nav>
    	<ul>
        	<li><a href="showHomePage.obj">Home</a></li>
            <li class=""><a href="showFindAtmPage.obj">Find ATM</a></li>
            <li class="start selected"><a href="showAboutUsPage.obj">About Us</a></li>
            <li><a href="showContactUsPage.obj">Contact Us</a></li>
            <li class="end"><a href="showDisclaimerPage.obj">Disclaimer</a></li>
        </ul>
    </nav>
    <div id="body">

	<div class="content1">
	<h2 align="center">About Us</h2>
	<br><br>
Bank Of Chennai (BOC) is India's largest private sector bank with renowned assets and profits till date.<br>
BOC currently has a network of a number of branches and ATM branches in all the major cities across India.<br>
Banking terms are basically confusing terms that are associated with banking and finance. Our bank  witnesses<br>
in managing all the important common banking terms.<br>
Activities undertaken by our bank include personal , private banking and retail banking services like savings<br>
account, credit cards, debit cards, current accounts and cheque books.<br>
Our bank overcomes to many forms of risk which triggers occassional systematic<br>
like liquidity, credit and interest risks.
</div>
 <div class="clear"></div>
    </div>
     
 
    <footer>
        <div class="footer-bottom">
            <p>Copyright&copy; 2015 Bank Of Chennai interactive. All rights reserved.</p>
         </div>
    </footer> 
</body>
</html>