<!-- 
/*******************************************************************
* File name    :   ServiceRequest.jsp
* Description  :   This jsp page allows user for service request page
*                  like credit, debit cards and cheque book
* Functionality:   This jsp page allows user for service request page
*                  like credit, debit cards and cheque book
* Models Used :    
* Restrictions:   
* Creation date:   19/11/2015
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
<link rel="stylesheet" href="css/UserStyle.css" type="text/css" />
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
    	<h1><a href="#">Bank of <span>Chennai</span></a></h1>
        <h2>Tradition of trust...</h2>
        <table align="right" style="font-size: small; float: right; margin-top: -80px">
			<tr><td>Welcome,</td></tr>
			<tr><td>${CustInfo.customerName }</td></tr>
			<tr><td><a href="showUserProfilePage.obj" class="button">Profile</a></td></tr>
			<tr><td><a href="signout.obj" class="button">Sign out</a></td></tr>
		</table>
    </header>
    <nav>
    	<ul>
        	<li><a href="home.obj">Home</a></li>
            <li><a href="transfer.obj">Transfer</a></li>
            <li><a href="showStatementsPage.obj">Statements</a></li>
            <li class="start selected"><a href="showServiceRequestPage.obj">Service Request</a></li>
            <li><a href="trackService.obj">Track Service</a></li>
            <li><a href="showChangeCommPage.obj">Change Communication</a></li>
        </ul>
    </nav>
	
    <div id="body">
    	<div class="content1">
    	<center>
    	<br>
    	<br>
    	<c:if test="${!empty Error}">
			<p align="center"><font color="red">${Error }</font></p>
			<c:set var="Error" value="" scope="session"></c:set>
		</c:if>
    	<h2>Request for Services</h2><br>
		<form name="frm" action="requestService.obj" method="post">
			<table class="requestchequetable" cellpadding="15px" cellspacing="15px">
				<tr>
					<td>Account Number</td>
					<td>:&nbsp;&nbsp;&nbsp;<label>${AccountId }</label><br></td>
				</tr>
				<tr>
					<td>Service Type</td>
					<td>:&nbsp;&nbsp;&nbsp;<select name="servicetype" required class="txtselectbox"
											oninvalid="this.setCustomValidity('Please select service type')"	
											onchange="this.setCustomValidity('')">
							<option value="" disabled>--Select--</option>
							<option value="Cheque Book">Cheque Book</option>
							<option value="Passbook">Passbook</option>
							<option value="Credit Card">Credit Card</option>
						</select>
						<br>
					</td>
				</tr>
				
				<tr>
					<td></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Proceed" class="submit">&nbsp;&nbsp;<input type="reset" value="Reset" class="submit"></td>
				</tr>
			</table>
		</form>
		<br>
		<br>
		<c:if test="${!empty ServiceRequest}">
			<p align="center"><font color="green">${ServiceRequest } <br> ${ServiceId}</font></p>
			<c:set var="ServiceRequest" value="" scope="session"></c:set>
		</c:if>
		<c:if test="${!empty NoServiceRequest}">
			<p align="center"><font color="red">${NoServiceRequest }</font></p>
			<c:set var="NoServiceRequest" value="" scope="session"></c:set>
		</c:if>
		</center>
		</div>
    </div>
    <footer>
        <div class="footer-bottom">
            <p>Copyright&copy; 2015 Bank Of Chennai interactive. All rights reserved.</p>
         </div>
    </footer>
</div>
</body>
</html>