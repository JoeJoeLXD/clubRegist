<jsp:include page="/SXYXXLBanner.jsp" />

<h1>Java Error</h1>
<p>Sorry, Java has thrown an exception.</p>
<p>To continue, click the Back button.</p>

<h2>Details</h2>
<p>Type: ${pageContext.exception["class"]}</p>
<p>Message: ${message}</p>

<jsp:include page="/SXYXXLFooter.jsp" />