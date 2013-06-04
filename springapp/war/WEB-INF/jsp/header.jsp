<%@ include file="/WEB-INF/jsp/include.jsp" %>
<header id="page_header">
	<nav>
	    <ul>
	    	<li>
	    		<a href="<c:url value="priceincrease.htm"/>"><fmt:message key="prices.increase"/></a>
	    	</li>
	    	<li>
	    		<a href="<c:url value="api/person/random.json"/>">Restlet? JSON</a>
	    	</li>
	    	<li>
	    		<a href="<c:url value="api/person/random.xml"/>">Restlet? XML</a>
	    	</li>
	    	<li>
				<aside>
			    	<ul>
			    		<li>
			    			<a href="?lang=en">en</a>
			    		</li>
			    		<li>
			    			<a href="?lang=nl">nl</a>
			    		</li>
			    	</ul>
				</aside>
	    	</li>
	    </ul>
	</nav>
</header>