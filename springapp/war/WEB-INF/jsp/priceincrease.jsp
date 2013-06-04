<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<meta charset="UTF-8">
  <title><fmt:message key="title"/></title>
    <c:url value="/static/css/main.css" var="resourceUrl"/>
	<link media="screen" rel="stylesheet" href="${resourceUrl}" type="text/css" /> 
</head>
<body>
<jsp:include page="header.jsp" />
<div id="container">
	<h1><fmt:message key="priceincrease.heading"/></h1>
	<form:form method="post" commandName="priceIncrease">
	  <table class="single_table">
	    <tr>
	      <td class="per20">Increase (%):</td>
	        <td class="per20">
	          <form:input path="percentage"/>
	        </td>
	        <td class="per60">
	          <form:errors path="percentage" cssClass="error"/>
	        </td>
	    </tr>
	  </table>
	  <br>
	  <input type="submit" value="Execute">
	</form:form>
	<a href="<c:url value="hello.htm"/>">Home</a>
</div>
</body>
</html>