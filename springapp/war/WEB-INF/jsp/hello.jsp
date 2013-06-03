<%@ include file="/WEB-INF/jsp/include.jsp" %>

<html>
  <head><title><fmt:message key="title"/></title></head>
  <body>
  	<jsp:include page="locale_menu.jsp" />
    <h1><fmt:message key="heading"/></h1>
    <p><fmt:message key="greeting"/> <c:out value="${model.now}"/></p>
    <h3>Products</h3>
    <c:forEach items="${model.products}" var="prod">
      <c:out value="${prod.description}"/> <i>$<c:out value="${prod.price}"/></i><br><br>
    </c:forEach>
    <br>
    	<a href="<c:url value="priceincrease.htm"/>"><fmt:message key="prices.increase"/></a>
    <br>
    	<a href="<c:url value="api/person/random.json"/>">JSON</a>
  </body>
</html>