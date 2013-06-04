<%@ include file="/WEB-INF/jsp/include.jsp" %>

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
	    <h1><fmt:message key="heading"/></h1>
	    <p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
	    <h3>Products</h3>
	    <c:forEach items="${model.products}" var="prod">
	      <c:out value="${prod.description}"/> <i>$<c:out value="${prod.price}"/></i><br><br>
	    </c:forEach>
	</div>
  </body>
</html>