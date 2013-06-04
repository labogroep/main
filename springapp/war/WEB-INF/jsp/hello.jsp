<%@ include file="/WEB-INF/jsp/include.jsp"%>

<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="title" /></title>
<c:url value="/static/css/main.css" var="resourceUrl" />
<link media="screen" rel="stylesheet" href="${resourceUrl}" type="text/css" />
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="container">
		<h1>
			<fmt:message key="heading" />
		</h1>
		<p>
			<fmt:message key="greeting" />
			<c:out value="${model.now}" />
		</p>
		<h3>
			<fmt:message key="Products" />
		</h3>
		<table class="single_table">
			<c:forEach items="${model.products}" var="prod">
				<tr>
					<td class="per20"><c:out value="${prod.description}" /></td>
					<td><i>$<c:out value="${prod.price}" /></i></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>